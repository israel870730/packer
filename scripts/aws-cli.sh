#!/bin/bash

sudo yum update -y && yum install awscli jq -y
#rm -rf /var/lib/sftd/
aws ssm get-parameter \
--name "/NonProd/okta/token" \
--query "Parameter.Value" \
--region $(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region) | tr -d '"' > /var/lib/sftd/enrollment.token
