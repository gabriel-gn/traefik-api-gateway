#!/bin/bash

# docker network create --ingress --driver overlay ingress
docker network create traefik # --scope=swarm
docker network create kong-net # --scope=swarm

# docker stack deploy -c docker-compose.yml traefik
docker-compose -f docker-compose.yml -p traefik up --remove-orphans -d
docker-compose -f services-compose.yml -p mock-services up --remove-orphans -d
docker-compose -f kong-compose.yml -p api-gateway up --remove-orphans -d
