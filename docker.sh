function clean_docker {
  docker system prune --force
  docker image prune --all --filter "until=4320h" --force # delete images older than 6 months ago
}
