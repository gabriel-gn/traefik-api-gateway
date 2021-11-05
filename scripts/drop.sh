#!/bin/bash

docker-compose -p mock-services down --remove-orphans
docker-compose -p api-gateway down --remove-orphans
docker-compose -p traefik down --remove-orphans
