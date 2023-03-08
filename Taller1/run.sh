#!/usr/bin/env bash

# run.sh

# ejecuta el contenedor en segundo plano
# /data es un volumen persistente

docker run \
    --detach \
    --rm \
    -p8086:80 \
    -v name:/data \
    --name="taller1" \
    taller1
