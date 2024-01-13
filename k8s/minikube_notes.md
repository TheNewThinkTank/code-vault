# MiniKube

## prerequisites
Docker installed

kubectl installed

download minikube (macOS):
https://github.com/kubernetes/minikube/releases/download/v1.32.0/minikube-darwin-arm64

move it to: `/usr/local/bin/minikube`

as the minikube binary is unnotarized,
open it in finder, right-click, and manually open it first time.

then `chmod +x minikube`

## useful commands

start the Docker Daemon
`open -a Docker`

check it is running
`docker ps`

optionally, check the status of the Docker Daemon
`docker info`

start the minikube cluster
`minikube start`

inspect nodes and pods
`kubectl get nodes`
`kubectl get pods`

get all pods:
`kubectl get po -A`

`minikube dashboard`
