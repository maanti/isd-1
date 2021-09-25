#!/bin/bash

# current image tag
LATEST_IMAGE_TAG=1.0.0

export DOCKER_BUILDKIT=1
docker build --tag isd .

docker tag isd maanti/isd-1:latest
docker push maanti/isd-1:latest

docker tag isd "maanti/isd-1:${LATEST_IMAGE_TAG}"
docker push "maanti/isd-1:${LATEST_IMAGE_TAG}"
