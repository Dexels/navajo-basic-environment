#!/bin/sh

#
# Assumes the ./run.sh is used to start the navajo.example docker containers.
#

VOLUME="$PWD/surefire-reports:/surefire-reports"
NETWORK="enterprise-integration-test-env_default"
IMAGE="dexels/enterprise-integration-test-script:latest"

docker  run  -v $VOLUME  --network $NETWORK  $IMAGE
