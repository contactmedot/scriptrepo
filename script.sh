#!/bin/sh
echo '-----------------------------------------------------'
echo 'Hi this is  executing  from script file'
echo '-----------------------------------------------------'
# install docker
yum install -y docker
systemctl enable docker.service
systemctl start docker.service
# install node
yum -y install -y curl
curl https://rpm.nodesource.com/setup_12.x | bash -
yum install -y nodejs
# install  git
yum install -y git
# install  java
yum install java-1.8.0-openjdk
# install maven
yum install maven
echo '-----------------------------------------------------'
echo 'Hi this is  exited execution from script file'
echo '-----------------------------------------------------'
echo 'you can check version for  install tool with node -v; npm -version;java -version;docker --version;git --version;mvn -v;'
