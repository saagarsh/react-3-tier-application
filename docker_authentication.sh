#!/bin/bash

DOCKER_USERNAME=$DOCKER_USERNAME
DOCKER_PASSWORD=$DOCKER_PASSWORD

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [$? -eq 0]; then
    echo "Logged in successfull."
else
    echo "some error occured."

fi
