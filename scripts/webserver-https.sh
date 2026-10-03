#!/bin/sh
# Inicia Apache y activa HTTPS (certificado autofirmado por defecto).
service apache2 start
a2enmod ssl
a2ensite default-ssl
service apache2 restart
ip a
ss -tlnp | grep -E ":80|:443"
