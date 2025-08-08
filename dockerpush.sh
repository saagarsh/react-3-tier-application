#!/bin/bash

# This is a simple script to push your docker images to docker hub.

DOCKER_USERNAME="saagarsh"
VERSION="v1.0"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

IMAGES=("react-3-tier-application-frontend"
        "react-3-tier-application-backend"
        "react-3-tier-application-db")

echo "Logging into Docker hub..."

echo "Building images..."

docker compose build

for image in "${IMAGES[@]}";
do

echo "Tagging images..."

docker tag ${image}:latest ${DOCKER_USERNAME}/${image}:$VERSION-$TIMESTAMP

echo "Pushing images to Docker hub..."

docker push ${DOCKER_USERNAME}/${image}:$VERSION-$TIMESTAMP

echo "Succcessfully pushed image: ${DOCKER_USERNAME}/${image}"

done

if [ $? -eq 0 ]; then
    echo "=========================================="
    echo "All images pushed successfully."
else
    echo "=========================================="
    echo "Error occured."
fi