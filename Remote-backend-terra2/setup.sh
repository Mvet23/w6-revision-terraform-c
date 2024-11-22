#!/bin/bash

# Install Apache HTTP server
sudo yum install -y httpd

# Enable and start Apache
sudo systemctl enable httpd
sudo systemctl start httpd

# Download the image to the Apache document root
sudo mv /tmp/"beautiful Lion.jpg" /var/www/html/lion.jpg

# Create the HTML content with a message and an image
echo '<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Terraform Revision</title>
</head>
<body style="text-align: center; font-family: Arial, sans-serif;">
    <h1>Welcome to Terraform Revision Casimir</h1>
    <p>Here is an image below:</p>
    <img src="/lion.jpg" alt="Beautiful Lion" style="border: 2px solid #000;">
</body>
</html>' | sudo tee /var/www/html/index.html
