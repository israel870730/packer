#!/bin/bash
#Install Wazuh Agent

# Add repository to Wazuh
sudo rpm --import https://packages.wazuh.com/key/GPG-KEY-WAZUH
sudo cat > /etc/yum.repos.d/wazuh.repo << 'EOF'
[wazuh]
gpgcheck=1
gpgkey=https://packages.wazuh.com/key/GPG-KEY-WAZUH
enabled=1
name=EL-$releasever - Wazuh
baseurl=https://packages.wazuh.com/4.x/yum/
protect=1
EOF

# Install wazuh
sudo WAZUH_MANAGER="server.cloud.wazuh.com" WAZUH_REGISTRATION_PASSWORD="Password-Wazuh" \
yum -y install wazuh-agent


# Edit configuration of the agent
#sudo vi  /var/ossec/etc/ossec.conf

# Enable, start and check the status
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent
sudo systemctl status wazuh-agent
