#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
#dockerpath=<your docker ID/path>
dockerpath=hungdq1379/docker1379/latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u hungdq1379 -p dckr_pat_KezEZsXMgT-S3z4czOKQJk9dOlA
docker tag ciond_project4:v1.0 hungdq1379/docker1379:latest

# Step 3:
# Push image to a docker repository
docker push hungdq1379/docker1379:latest
