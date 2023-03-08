#!/usr/bin/env bash

# shell.sh

# Ejecuta una shell dentro del contenedor
# para diagnosticar problemas.

# paro la ejecución del contenedor actual
./stop.sh

# lanzo el contenedor con shell (/bin/bash)
docker run -it --rm --name taller1 taller1 /bin/bash
