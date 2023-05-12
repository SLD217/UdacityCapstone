#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

dockerpath='mccowna/helloworld:v1.0.0'

# Step 2
# Run the Docker Hub container with kubernetes

#minikube start
kubectl get nodes
kubectl create deploy helloworld --image=$dockerpath 

#--labels app=houseprice

# Step 3:
# List kubernetes pods

kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
#kubectl wait --for=condition=ready pod -l app=houseprice --timeout=180s
sleep 30

kubectl port-forward deployment/helloworld --address 0.0.0.0 8000:80