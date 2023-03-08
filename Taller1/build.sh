#!/bin/sh

# build.sh

# ejecutamos "docker build" para construir un contenedor con nombre "taller1" from . (current directory)
# Dockerfile está en el directorio actual

docker build -t taller1 .
