#!/bin/bash
docker run -v /var/local/dcm4chee-arc/openvpn:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://vpn.localdomain -r 10.10.10.0/24 -p "route 10.10.10.0 255.255.255.0" -N -d
docker run -v /var/local/dcm4chee-arc/openvpn:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki

#docker run -v /var/local/dcm4chee-arc/openvpn:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full marcelo nopass
#docker run -v /var/local/dcm4chee-arc/openvpn:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient marcelo > marcelo.ovpn
#echo "ifconfig-push 192.168.254.1 192.168.254.2" | docker run -v /var/local/dcm4chee-arc/openvpn:/etc/openvpn -i --rm kylemanna/openvpn tee /etc/openvpn/ccd/marcelo