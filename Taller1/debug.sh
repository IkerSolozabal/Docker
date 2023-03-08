#!/usr/bin/env bash

# debug.sh

# ejecuta el contenedor en primer plano 

docker run \
    --rm \
    -p8086:80 \
    --name="taller1" \
    -v `pwd`:/home/app \
    taller1
