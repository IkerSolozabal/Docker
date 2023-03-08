# La imagen se basará en un debian
FROM debian

# seleccionamos zona y hora
ENV TZ=Europe/Madrid

# instalamos PHP
# incluimos procps y telnet
RUN apt update -qq >/dev/null && apt install -y -qq procps telnet apache2 php7.4 -qq >/dev/null

# definimos los directorios HTML
WORKDIR /var/www/html
COPY . /var/www/html/

# cremos la carpeta data y le damos permisos para que pueda la app grabar
RUN mkdir /data && chown -R www-data /data && chmod 755 /data & chmod 775 -R /var/www/html/

# we need custom php configuration file to enable userdirs
COPY php.conf /etc/apache2/mods-available/php7.4.conf

# enable userdir and php
RUN a2enmod php7.4

# cremos la carpeta sll y le damos permisos para que pueda la app grabar
RUN mkdir /etc/apache2/ssl

# Copiamos las claves del certificado
COPY apache.crt /etc/apache2/ssl/
COPY apache.key /etc/apache2/ssl/

RUN chmod -R 755 /etc/apache2/ssl/apache.key /etc/apache2/ssl/apache.crt



COPY default-ssl.conf /etc/apache2/sites-available/

RUN a2enmod ssl
RUN a2ensite default-ssl

# we run a script to stat the server; the array syntax makes it so ^C will work as we want
CMD  ["./entrypoint.sh"]
