#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EC2_AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h1>Hello from $(hostname -f) in AZ $EC2_AVAIL_ZONE</h1?" > /var/www/html/index.html

# To view all categories of instance metadata from within a running instance, use the following IPv4 or IPv6 URIs:
# http://169.254.169.254/latest/meta-data/
# This IPv4 address is a link-local address and it is valid only from the instance.
# http://[fd00:ec2::254]/latest/meta-data/
