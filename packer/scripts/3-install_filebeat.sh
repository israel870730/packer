#!/bin/bash
#Install Filebeat Agent

# Go to the folder /tmp
cd /tmp/

# Download the packet 
sudo yum install wget -y
sudo wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.9-x86_64.rpm

# Install the packet
sudo rpm -Uvh filebeat-7.17.9-x86_64.rpm

# Delete all
sudo rm -rf filebeat-*

# Edit configuration of the agent
# sudo vi  /etc/filebeat/filebeat.yml

# Enable, start and check the status 
sudo systemctl enable filebeat
sudo systemctl start filebeat
sudo systemctl status filebeat
