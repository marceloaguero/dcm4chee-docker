#!/bin/bash
docker network create --driver overlay --subnet=10.10.10.0/24 --attachable vpn
docker network create --driver overlay --attachable proxy
