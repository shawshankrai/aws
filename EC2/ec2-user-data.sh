#!/bin/bash
# user data script for ec2 bootstrap
# install httpd
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello $(hostname -f)</h1>" > /var/www/html/index.html