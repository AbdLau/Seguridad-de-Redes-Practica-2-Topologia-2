#!/bin/sh
# Pruebas desde el usuario hacia el servidor a través del túnel IPsec.
ip a show eth0.10
ping -c 5 10.8.46.130
traceroute 10.8.46.130
curl -vk --connect-timeout 5 https://10.8.46.130
