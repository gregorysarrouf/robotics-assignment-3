#!/usr/bin/env bash

# Get the image names from compose.yml
IMAGES=$(docker compose config --services)

BUILD_NEEDED=0

for IMAGE in $IMAGES; do
  if ! docker image inspect "robotics-assignment-3-$IMAGE" >/dev/null 2>&1; then
    BUILD_NEEDED=1
    break
  fi
done

if [ "$BUILD_NEEDED" -eq 1 ]; then
  docker compose up --build
else
  docker compose up
fi
