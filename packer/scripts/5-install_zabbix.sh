#!/bin/bash
#Install Zabbix Agent


# Added repository
sudo rpm -Uvh https://repo.zabbix.com/zabbix/5.4/rhel/7/x86_64/zabbix-release-5.4-1.el7.noarch.rpm

# Update and install the agent
sudo yum update -y
sudo yum install zabbix-agent -y

# Edit configuration of the agent
# sudo vi /etc/zabbix/zabbix_agentd.conf

# Enable, start and check the status
sudo systemctl enable zabbix-agent
sudo systemctl start zabbix-agent
sudo systemctl status zabbix-agent
