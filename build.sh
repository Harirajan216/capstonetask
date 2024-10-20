#!/bin/bash

# Build the Docker image
docker build -t my-react-app:latest .

# Tag the image for pushing to Docker Hub dev repository
docker tag my-react-app:latest harirajanrajendran/dev01:latest
docker tag my-react-app:latest harirajanrajendran/prod01:latest


# Push the image to the dev repository
docker push harirajanrajendran/dev01:latest
docker push harirajanrajendran/prod01:latest
