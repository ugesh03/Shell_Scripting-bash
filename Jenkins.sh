#!/bin/bash

# updating the package
yum update -y

# Install JDK-version=21 // yum install java-21-openjdk
yum install java-21-* -y

# install wget
yum install wget -y

## Add Jenkins repository
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import GPG key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum install jenkins -y

# Enable and start the Jenkins service:
systemctl enable jenkins
systemctl start jenkins
