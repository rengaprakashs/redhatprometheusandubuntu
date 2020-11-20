#!/bin/bash

# Ubuntu 16.04

# Prometheus installation. It's a lousy script though.

# Example:
# chmod +x full_installation.sh
# sudo pwd
# ./full_installation.sh


#!/bin/bash
if [ -e /etc/redhat-release ]
 then
     sudo yum install vim  wget -y
	 sudo useradd --no-create-home -s /bin/false prometheus
	 sudo useradd --no-create-home -s /bin/false node_exporter
	 sudo useradd --no-create-home -s /bin/false blackbox_exporter
	 sudo  useradd --no-create-home -s /bin/false alertmanager
	 
	 

     #======Java install=============
     yum install java java-devel -y   
    else
        sudo adduser --no-create-home --disabled-login --shell /bin/false --gecos "Prometheus Monitoring User" prometheus
		sudo adduser --no-create-home --disabled-login --shell /bin/false --gecos "Node Exporter User" node_exporter
		sudo adduser --no-create-home --disabled-login --shell /bin/false --gecos "Blackbox Exporter User" blackbox_exporter
		sudo adduser --no-create-home --disabled-login --shell /bin/false --gecos "Alertmanager User" alertmanager
   fi


   
   
./prometheus.sh
./node.sh
./blackbox.sh
./alertmanager.sh



echo "Installation complete."
echo "Visit port 3000 to view grafana dashboards."
