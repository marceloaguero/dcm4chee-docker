#!/bin/bash
# Get openvpn container's IP address
IP_GW=$(docker exec -it pacsvpn_openvpn_1 ifconfig | grep 10.10.10 | cut -d ":" -f 2 | cut -d " " -f 1)

# Check if the route to openvpn container exists in dcm4chee-arc container
ROUTE_EXISTS=$(docker exec -it pacsvpn_arc_1 ip route | grep "$IP_GW")
# If the route does not exist, the add it to arc container
if [ -z "$ROUTE_EXISTS" ]; then
    docker exec -it pacsvpn_arc_1 ip route add 192.168.255.0/24 via $IP_GW
fi

# Check if the route to openvpn container exists in viewer container
ROUTE_EXISTS=$(docker exec -it pacsvpn_viewer_1 ip route | grep "$IP_GW")
# If the route does not exist, the add it to viewer container
if [ -z "$ROUTE_EXISTS" ]; then
    docker exec -it pacsvpn_viewer_1 ip route add 192.168.255.0/24 via $IP_GW
fi
