#!/bin/bash

DOCKER_USERNAME=$DOCKER_USERNAME
DOCKER_PASSWORD=$DOCKER_PASSWORD

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [ $? -eq 1 ]; then
     echo "some error occured."
else
    echo "Logged in successful."

fi
