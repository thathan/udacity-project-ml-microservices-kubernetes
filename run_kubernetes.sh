#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=thathan/project-api:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictor --image=${dockerpath}

# Step 3:
# List kubernetes pods
sleep 5
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward predictor 8000:80
