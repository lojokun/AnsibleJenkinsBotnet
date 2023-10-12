#!/bin/bash

echo "[~] Downloading neccessary packages"
export CASC_JENKINS_CONFIG=/home/vagrant/jenkins/jenkins-as-code.xml
apk update && apk upgrade
apk add --update coreutils wget python3 ansible nano jenkins docker
echo "[+] Download successful!"

echo "[~] Changing permission for keys"
chmod 400 /home/vagrant/ansible/keys/*
echo "[+] Successfully changed permissions!"

# echo "[~] Starting Jenkins"
# sudo rc-service jenkins start
# echo "[+] Started Jenkins"

# echo "[~] Creating user"
# sleep 10
# sudo mkdir -p /var/lib/jenkins/users/lojo
# sudo cp /home/vagrant/jenkins/users/config.xml /var/lib/jenkins/users/lojo/config.xml
# echo "[+] User created successfully"

echo "[~] Downloading docker image for jenkins"
sudo docker pull jenkins/jenkins:lts
echo "[+] Successfully downloaded docker image!"

echo "[~] Running docker image"
sudo docker build -f /home/vagrant/jenkins/Dockerfile -t my-jenkins-image
sudo docker run -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home my-jenkins-image
echo "[+] Successfully ran docker image!"