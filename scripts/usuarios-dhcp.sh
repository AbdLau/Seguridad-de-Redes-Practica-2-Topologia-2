#!/bin/sh
# Cliente de la VLAN 10: etiqueta la VLAN, pide IP por DHCP y aplica la configuración.
ip link add link eth0 name eth0.10 type vlan id 10
ip link set eth0 up
ip link set eth0.10 up
udhcpc -i eth0.10
# udhcpc no aplica la IP sin script: usa la IP que muestre "lease obtained"
ip addr add 10.8.46.10/25 dev eth0.10
ip route add default via 10.8.46.1
ip a show eth0.10
