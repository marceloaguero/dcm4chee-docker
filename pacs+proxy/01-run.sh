#!/bin/bash
docker stack deploy -c docker-compose-proxy.yml proxy
sleep 60
docker stack deploy -c docker-compose-arc.yml dcm4chee

