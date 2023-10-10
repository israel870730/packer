#!/bin/bash
#Install Scaleft Agent

#https://help.okta.com/asa/en-us/content/topics/adv_server_access/docs/sft-redhat.htm
#https://help.okta.com/asa/en-us/content/topics/adv_server_access/docs/sftd-redhat.htm

# Add repository to scaleft
sudo rpm --import https://dist.scaleft.com/GPG-KEY-OktaPAM-2023
sudo cat > /etc/yum.repos.d/scaleft.repo << 'EOF'
[scaleft]
name=ScaleFT
baseurl=http://pkg.scaleft.com/rpm
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://dist.scaleft.com/pki/scaleft_rpm_key.asc
enabled=1
EOF

# Update list the packet
sudo yum update -y

# Install the server
sudo yum install scaleft-server-tools -y

# Install the client
sudo yum install scaleft-client-tools -y

# Enable, start and check the status
sudo systemctl enable sftd
sudo systemctl start sftd
sudo systemctl status sftd