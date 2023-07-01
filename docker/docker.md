# Docker

### initialize new docker project
`docker init`

```BASH
docker build --tag python-django .
docker run --rm -ti --publish 8000:8000 python-django
```

d: background
t: terminal (log messages)
i: interactive

### List running containers
`docker ps`

```BASH
docker stop <container-id>
docker ps --filter status=exited -q
docker rm $(docker ps -q)
docker rm $(docker ps --filter status=exited -q)
```

### List images
`docker images`

### Remove image
`docker rmi <container-id>`
