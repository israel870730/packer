#!/bin/bash
#https://help.okta.com/asa/en-us/content/topics/adv_server_access/docs/sft-redhat.htm
#https://help.okta.com/asa/en-us/content/topics/adv_server_access/docs/sftd-redhat.htm

sudo rpm --import https://dist.scaleft.com/GPG-KEY-OktaPAM-2023
sudo cat > /etc/yum.repos.d/scaleft.repo << 'EOF'
#ScaleFT
[scaleft]
name=ScaleFT
baseurl=http://pkg.scaleft.com/rpm
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://dist.scaleft.com/pki/scaleft_rpm_key.asc
enabled=1
EOF

# Actualizar la lista de paquetes
sudo yum update -y
#Install the server
sudo yum install scaleft-server-tools -y

#Install the client
sudo yum install scaleft-client-tools -y
