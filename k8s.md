# Kubernetes

## Concepts

- cluster
- nodes (servers): control servers/master (hosts the k8s API) and worker nodes (running the application workloads)
- pods: has 1 IP address, a bit of storage, and can contain 1 or more containers
- (Docker) containers

## Tools

- KubeAdm
- kubelet
- kubectl

`kubectl get pods -n kube-system`<br>
`kubectl get nodes`<br>

Get pod info (containers running inside etc.)
`kubectl describe pod nginx`<br>
`kubectl delete pod nginx`

- helmchart
- Kustomize
- Argo CD

IaC: Pulumi or Terraform

## Networking

Virtual network that spans the entire cluster (all nodes).
Logically separate fromn the physical network that connects one node to another.

