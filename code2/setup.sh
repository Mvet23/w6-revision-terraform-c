#!/bin/bash
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd
echo '<h1>Welcome to Terraform Casimir</h1>' | sudo tee /var/www/html/index.html