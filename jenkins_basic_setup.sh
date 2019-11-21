#!/bin/bash

# install jenkins
echo "Add key in the rep of ubuntu, and waiting the message OK"
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo "Add file sources.list"
echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
echo "Install Jenkins"
sudo apt-get install jenkins
# install java
echo "install java for start jenkins"
sudo apt update
sudo apt install openjdk-8-jdk
# continue setup jenkins
echo "Auto starting Jenkins"
sudo systemctl status jenkins
# ufw
echo "Setting the ufw. Port 8080 will be enabled"
sudo ufw allow 8080
sudo ufw status
echo "If Jenkins is ok, see loaded will be enabled."
echo "Letsgo start jenkins across systemctl"
echo "Done. Go to the link, ip_address_or_domain_name:8080 and set up more"
