# Docker

## initialize new docker project
`docker init`

## Dockerfile
env vars (ARG and ENV):<br>
`ARG [variable-name]=[default-value]`

Modify ARG Value with docker build:<br>
If you did not provide a value for the ARG variable or want to modify the default value while building the image, use the --build-arg option.

`docker build -t [image-name] --build-arg [arg-variable]=[value] .`

Similarly,<br>
`ENV [variable-name]=[default-value]`<br>
(While the ARG variable is unavailable after the image-building process, ENV persists in the containers.)

## Images
Build image:<br>
`docker build --tag python-django .`

`--tag`: set a name for the image

list images:<br>
`docker images`

remove image:<br>
`docker rmi <container-id>`

## Containers
start container:<br>
`docker run --rm -ti --publish 8000:8000 python-django`

`d`: background<br>
`t`: terminal (log messages)<br>
`i`: interactive<br>
`--rm`: remove previous containers with same name if they exist<br>

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

# TODO: add example with volume mount, in docker run command
