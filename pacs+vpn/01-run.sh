#!/bin/bash
docker-compose --file docker-compose-openvpn.yml up -d
sleep 30
docker-compose --file docker-compose-arc.yml up -d
sleep 60
docker stack deploy --compose-file docker-compose-nsupdate.yml nsupdate