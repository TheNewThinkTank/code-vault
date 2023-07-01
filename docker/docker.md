# Docker

## initialize new docker project
`docker init`

## Images
Build image:<br>
`docker build --tag python-django .`

## Containers
start container:<br>
`docker run --rm -ti --publish 8000:8000 python-django`

d: background<br>
t: terminal (log messages)<br>
i: interactive<br>

list running containers:<br>
`docker ps`

stop container:<br>
`docker stop <container-id>`

list or remove stopped containers:
```BASH
docker ps --filter status=exited -q
docker rm $(docker ps -q)
docker rm $(docker ps --filter status=exited -q)
```

### List images
`docker images`

### Remove image
`docker rmi <container-id>`
