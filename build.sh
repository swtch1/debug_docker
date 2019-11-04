#!/usr/bin/env bash

if [[ $1 == '-h' || $1 == '--help' ]];then
  echo 'helper script for building the local docker container'
  echo 'this image will likely need to be built on PublicWifi'
  exit 0
fi

set -e

# ensure we're running from the same directory as the script
cd $(dirname $0)

tag='gcr.io/pr-com-203715/debug:latest'  # use appropriate project ID
echo "=> running docker build"
docker build . --tag ${tag}

echo "=> pushing $tag"
docker push $tag

echo 'done.'
