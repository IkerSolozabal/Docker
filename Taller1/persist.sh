#!/usr/bin/env bash

# persist.sh

# 
#ejecutamos el contenedor con  /data como volumen persistente

docker run \
    --rm \
    -p8086:80 \
    --name="taller1" \
    -v `pwd`:/home/app \
    -v name:/data \
    taller1
