#!/bin/bash
IP_GW=$(docker exec -it pacsvpn_openvpn_1 ifconfig | grep 10.10.10 | cut -d ":" -f 2 | cut -d " " -f 1)
echo $IP_GW
echo "docker exec -it pacsvpn_arc_1 ip route add 192.168.255.0/24 via $IP_GW" 
docker exec -it pacsvpn_arc_1 ip route add 192.168.255.0/24 via $IP_GW
echo "docker exec -it pacsvpn_viewer_1 ip route add 192.168.255.0/24 via $IP_GW"
docker exec -it pacsvpn_viewer_1 ip route add 192.168.255.0/24 via $IP_GW
