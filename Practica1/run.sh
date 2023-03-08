#!/usr/bin/env bash

# run.sh

# ejecuta el contenedor en segundo plano
# /data es un volumen persistente

docker run \
    --detach \
    --rm \
    -p8086:80 \
    -p8080:443 \
    --name cont_practica1 \
    img_practica1
