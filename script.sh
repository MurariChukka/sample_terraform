#!/bin/bash
# Update the package index
sudo yum update -y

# Install Apache web server
sudo yum install -y httpd

# Start the Apache service
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Copy index.html to the web server directory
sudo cp /home/ec2-user/sample_terraform/index.html /var/www/html/
