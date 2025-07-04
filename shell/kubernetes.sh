# Part 1

# Kubernetes local - setup


## install docker

docker build -t flask-docker-ci:latest .

## install kubectl (kubernetes CLI)

brew install kubectl

# Install Minikube (runs Kubernetes on your laptop)
brew install minikube

# verify versions

minikube version
kubectl version --client


## Start Minikube

minikube start

# Build image inside minikube
eval $(minikube docker-env)
docker build -t flask-docker-ci:local .

## Apply to kubernetes
kubectl apply -f k8s/

## Test your app
minikube service flask-service --url


## Other important commands
kubectl get pods

kubectl apply -f deployment.yaml

kubectl get pods -n default

kubectl exec -it flask-app-75cf9f9478-ss59c -- /bin/sh