#!/bin/bash

#sudo rm -fr /var/local/dcm4chee-arc
sudo mkdir -p /var/local/dcm4chee-arc/ldap
sudo mkdir /var/local/dcm4chee-arc/slapd.d
sudo mkdir /var/local/dcm4chee-arc/db
sudo mkdir /var/local/dcm4chee-arc/wildfly
sudo mkdir /var/local/dcm4chee-arc/storage
sudo mkdir /var/local/dcm4chee-arc/mongo
sudo mkdir /var/local/dcm4chee-arc/ohif
sudo cp app.json /var/local/dcm4chee-arc/ohif/