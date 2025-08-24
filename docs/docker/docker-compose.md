# docker-compose

## official ref
https://docs.docker.com/compose/compose-file/

## run commands
```BASH
docker compose up --build
sudo docker-compose up -d
sudo docker-compose down
sudo docker-compose stop
sudo docker-compose ps
```

## docker-compose.yaml
```YAML
version: "3"
services:
  website:
    image:
    ports:
      - ""
    restart: always
  website2:
    image:
    ports:
      - ""
    restart: always
    networks:    
networks: 
```
