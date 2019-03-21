#!/bin/bash

# This script and its functions supports docker.

function clean_docker {
  docker system prune --force
  docker image prune --filter "until=4320h" --force # delete images older than 6 months ago
}
