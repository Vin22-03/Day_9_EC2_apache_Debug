#!/bin/bash

# EC2 Apache Debug Lab – Ubuntu Version

# 1. Update system and install Apache
sudo apt-get update -y
sudo apt-get install -y apache2

# 2. Create a basic HTML page
echo "Hello from AWS Debug Lab!" | sudo tee /var/www/html/index.html

# 3. Simulate Apache not running
sudo systemctl stop apache2

# 4. Break file permissions (simulate bug)
sudo chown root:root /var/www/html/index.html

