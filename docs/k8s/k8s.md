# Kubernetes

## Concepts

- cluster
- nodes (servers): control servers/master (hosts the k8s API) and worker nodes (running the application workloads)
- pods: has 1 IP address, a bit of storage, and can contain 1 or more containers
- (Docker) containers

## Tools

etcd (pods) (data store for kubernetes controller/master server(s)):
provides distributed synchronized data storage for the cluster state

kube-apiserver

kube-scheduler

- KubeAdm

- kubelet: runs as a service. Controls the pods<br>
e.g.
`sudo systemctl status kubelet`

- kubectl

- kube-proxy (part of handling the virtual network of the cluster)

`kubectl get pods -n kube-system`<br>
`kubectl get nodes`<br>
`kubectl get deployments`<br>
`kubectl describe deployment nginx-deployment`<br>

Get pod info (containers running inside etc.)
`kubectl describe pod nginx`<br>
`kubectl delete pod nginx`

- helmchart
- Kustomize
- Argo CD
https://argo-cd.readthedocs.io/en/stable/


services

IaC: Pulumi or Terraform

## Networking

Virtual network that spans the entire cluster (all nodes).
Logically separate fromn the physical network that connects one node to another.

