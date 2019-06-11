#!/bin/sh

# This script and its functions supports docker.

# Clean out docker
# remove unnecessary artifacts
# Example usage: clean_docker
function clean_docker {
  if [ -n "$BASH_VERSION" ]; then
    about 'clean out docker by removing unnecessary artifacts'
    group 'zhaoli'
  fi

  docker system prune --force
  docker image prune --filter "until=4320h" --force # delete images older than 6 months ago
}
