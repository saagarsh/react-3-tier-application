#!/bin/bash

# This is a simple script to push your docker images to docker hub.

DOCKER_USERNAME="saagarsh"

IMAGES=("react-3-tier-application-frontend"
        "react-3-tier-application-backend"
        "mysql")

echo "Logging into Docker hub..."

for image in "${IMAGES[@]}";
do
docker tag ${image}:latest ${DOCKER_USERNAME}/${image}

echo "Pushing images to Docker hub..."

docker push ${DOCKER_USERNAME}/${image}

echo "Succcessfully pushed image: ${DOCKER_USERNAME}/${image}"

done

if [ $? -eq 0 ]; then
    echo "All images pushed successfully."
else
    echo "Error occured."
fi