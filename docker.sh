export DOCKER_HOST=tcp://localhost:4243
echo "Remove extraneous Docker images and containers?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
          wget -qO- https://raw.githubusercontent.com/blueyed/dotfiles/master/usr/bin/docker-cleanup | sh
          break;;
        No ) break;;
    esac
done
