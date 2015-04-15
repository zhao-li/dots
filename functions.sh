function start_working {
  source projects.sh
  PROJECT_PATH=$(path_for $1)

  wait_for_docker
  cd $PROJECT_PATH &&
  fig up &
  docker run -it -d -p 8181:8181 --name ide -v $PROJECT_PATH:/workspace/ kdelfour/cloud9-docker &&
  xdg-open http://0.0.0.0:8181 &> /dev/null &
  
  wait_for_container
  xdg-open http://$(fig port web 3000) &> /dev/null &
}

function stop_working {
  PROJECT_PATH=$(path_for $1)
  cd $PROJECT_PATH && fig stop
  docker stop ide
  docker rm ide
}

function path_for {
  path="$1_path"
  echo ${!path}
}

function wait_for_docker {
  DOCKER_UP=1 #assument docker is not up yet
  until [ "$DOCKER_UP" -eq 0 ]
    do
      sleep 1
      docker &> /dev/null
      DOCKER_UP=$?
    done
}

function wait_for_container {
  CONTAINER_UP=1 #assument container is not up yet
  until [ "$CONTAINER_UP" -eq 0 ]
    do
      sleep 1
      cd $PROJECT_PATH && fig port web 3000 &> /dev/null
      CONTAINER_UP=$?
    done
}
