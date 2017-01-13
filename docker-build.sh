#!/bin/sh

docker build -t hadolint-builder -f Dockerfile_builder .
docker run --rm -it -v $(pwd):/mnt hadolint-builder
docker build -t hadolint .
