# Kubernetes

## Concepts

- cluster
- pods: has 1 IP address, a bit of storage, and can contain 1 or more containers
- (Docker) containers

## Tools

- KubeAdm
- kubelet
- kubectl

`kubectl get pods -n kube-system`<br>

Get pod info (containers running inside etc.)
`kubectl describe pod nginx`

`kubectl delete pod nginx`

- helmchart
- Kustomize
- Argo CD

IaC: Pulumi or Terraform
