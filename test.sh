#!/bin/sh

#
# Assumes the ./run.sh is used to start the navajo.example docker containers.
#

VOLUME="$PWD/surefire-reports:/surefire-reports"
NETWORK="navajo-basic-environment_default"
IMAGE="dexels/navajo.example.test:latest"

docker  run  -v $VOLUME  --network $NETWORK  $IMAGE
