export GOVC_MIN_API_VERSION=5.1
# notes about /etc/default/docker
#DOCKER_OPTS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock"

# clear out docker images to free up space
# example usage:
# in linux prompt: sudo bash -c \
#   "$(declare -f clean_docker); clean_docker"

function clean_docker {
  docker system prune
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
