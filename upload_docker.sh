#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=chakoman/udacity-capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login -u $DOCKER_LOGIN -p $DOCKER_PASSWORD
docker login -u chakoman
docker tag udacity-capstone $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath