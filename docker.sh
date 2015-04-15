export DOCKER_HOST=tcp://localhost:4243

DAY_OF_WEEK=$(date +"%a")
if [ "$DAY_OF_WEEK" == "Mon" ]; then
  echo "Remove extraneous Docker images and containers?"
  select yn in "Yes" "No"; do
      case $yn in
          Yes ) 
            wget -qO- https://raw.githubusercontent.com/blueyed/dotfiles/master/usr/bin/docker-cleanup | sh
            break;;
          No ) break;;
      esac
  done
else
  echo "Today isn't Monday so we are not cleaning up Docker"
fi
