export DOCKER_HOST=tcp://localhost:4243
export GOVC_MIN_API_VERSION=5.1
# notes about /etc/default/docker
#DOCKER_OPTS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock"
#export DOCKER_HOST="tcp://localhost:4243"


function clean_docker {
  wget -qO- https://raw.githubusercontent.com/blueyed/dotfiles/master/usr/bin/docker-cleanup | sudo sh
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
