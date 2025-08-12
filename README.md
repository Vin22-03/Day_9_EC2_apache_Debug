# 🛠️ EC2 Web Debug Lab – Fixing “Site Not Loading” Issue

This project simulates a **real-world scenario** faced by AWS Cloud Engineers and Support Associates:

> “The EC2 is up, Apache is installed, everything looks fine… but the website doesn’t load!”

---

## 🧠 Objective

To simulate, investigate, and resolve a common EC2 troubleshooting issue where:
- The Apache web server is running ✅
- The website file exists ✅
- But the website won’t load in the browser ❌

---

## 🧪 What Was Actually Done

### ✅ Setup:
- Launched a free-tier **Ubuntu EC2 instance** on AWS.
- Installed **Apache2** web server.
- Created a basic HTML page (`index.html`) in `/var/www/html/`.

### 🐞 Simulated Issue:
- **No HTTP (port 80) rule** in the EC2's Security Group — this blocked web traffic.
- So even though the Apache server was correctly set up, the website was inaccessible.

### 🛠️ Fix Applied:
- Opened the EC2 Security Group → Edited Inbound Rules → **Added HTTP (port 80)**.
- Revisited the website in browser — **Page loaded successfully** ✅

---

## 🔍 Skills Practiced

| Skill Area              | What I Did                                                 |
|-------------------------|-------------------------------------------------------------|
| 🖥️ EC2 Compute Setup     | Launched and accessed EC2 using SSH                        |
| 🌐 Web Server Basics     | Installed & verified Apache2 on Ubuntu                    |
| 🔐 AWS Networking        | Worked with **Security Groups** to control inbound traffic |
| 🧵 Cloud Debugging Flow | Checked service status, file presence, and network config |

---


## 🧾 setup.sh (for simulation)
```bash
#!/bin/bash

# EC2 Apache Setup Script

# Update and install Apache
sudo apt-get update -y
sudo apt-get install -y apache2

# Create a simple webpage
echo "Hello from AWS Debug Lab!" | sudo tee /var/www/html/index.html

# Apache starts by default (no bugs simulated)
# This script sets up a working site; you simulate bugs manually if needed

