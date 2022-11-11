#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=hungdq1379/docker1379/latest

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl apply -f deployment.yaml
kubectl run webForProject4\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=webForProject4

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward webForProject4 8080:80
#kubectl apply -f service.yaml
