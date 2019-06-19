#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: ./hack/apply.sh <controller/image>"
  exit 0
fi

CONTROLLER_IMAGE=$1

cd $(dirname "${BASH_SOURCE[0]}")/..

#pack build ${CONTROLLER_IMAGE} --builder heroku/buildpacks --publish

ytt -f config/.  -v controller_image="matthewmcnew/foo:latest@sha256:92e8616651724d3ee247da708386a7d31d0d1c78cfb29b9a9f5311a10a999fa2" > file.yaml