#!/bin/bash

# Pull the latest image from the Docker Hub dev repository
docker pull harirajanrajendran/dev01:latest
docker push harirajanrajendran/prod01:latest

# Stop any running container with the same name
docker stop my-react-app || true
docker rm my-react-app || true

# Start the container using Docker Compose
docker-compose up -d --force-recreate
