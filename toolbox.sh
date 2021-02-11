#!/usr/bin/env bash

export HOME_DIR=$(pwd)

# Export the vars in .env into your shell:
export $(egrep -v '^#' .env | xargs)

function docker_up() {
  if [ -d $1 ]; then
    export VOLUME_DIR=$1
    shift
    docker-compose -f docker-compose.yml up $@
  else
    echo "The $1 directory does not exist"
    exit
  fi
  exit
}

function docker_shutdown() {
  docker-compose -f docker-compose.yml down $@
}

function docker_compose() {
  docker-compose $@
}

function ssh() {
  docker exec -it m_web bash
}

function show_help() {
  printf "
Usage:
$ ./toolbox.sh COMMAND [COMMAND_ARGS...]

commands:
* up
* down
"
}

case "$1" in
up)
  shift
  docker_up $@
  exit
  ;;
down)
  shift
  docker_shutdown $@
  exit
  ;;
dc)
  shift
  docker_compose $@
  exit
  ;;
ssh)
  ssh
  exit
  ;;
esac

show_help
