export GOVC_MIN_API_VERSION=5.1
# notes about /etc/default/docker
#DOCKER_OPTS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock"

# clear out docker images to free up space
# example usage:
# in linux prompt: sudo bash -c \
#   "$(declare -f clean_docker); clean_docker"

function clean_docker {
  docker volume rm $(docker volume ls -qf dangling=true) #http://stackoverflow.com/questions/39718294/error-running-docker-container-no-space-left-on-device-data-db-journal#answer-39755238
  docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
}

if [[ $- == *i* ]]; then # if interactive
  DAY_OF_WEEK=$(date +"%a")
  if [ "$DAY_OF_WEEK" == "Mon" ]; then
    echo "Remove extraneous Docker images and containers?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) 
              clean_docker
              break;;
            No ) break;;
        esac
    done
  else
    echo "Today isn't Monday so we are not cleaning up Docker"
  fi
fi
