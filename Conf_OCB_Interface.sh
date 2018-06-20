#Configuración del modo OCB en el caso de tener dos tarjetas miniPCI atheros
#/bin/bash

ip link set wlp3s0 down

ip link set wlp2s0 down
iw dev wlp2s0 interface add ocb0 type ocb
iw dev ocb0 set type ocb
ip link set ocb0 down
iw reg set AA
iw reg get
ip link set ocb0 up
iw dev ocb0 ocb join 5880 10MHZ
iw dev | iwconfig

ifconfig ocb0 192.168.1.2 netmask 255.255.255.0 



