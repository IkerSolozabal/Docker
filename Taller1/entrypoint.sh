#!/bin/bash

# necesitamos configurar apache2 envvars
. /etc/apache2/envvars

echo "entrypoint.sh"
ls -l
ls -ldg /data
ls -l /data/

# algunas shell permitirán hacer click en el enlace
echo && echo && echo "----> Point your browser at http://localhost:8086/public_html/" && echo && echo

# ejecutamos apache (in the foreground)
exec apache2 -D FOREGROUND



