#!/bin/sh
echo '-----------------------------------------------------'
echo 'Hi this is  executing  from script file'
echo '-----------------------------------------------------'
read -p "Enter Your Username: "  username
echo "Welcome $username!"
# install docker
echo '-----------------------------------------------------'
echo 'Hi installing docker from script file'
echo '-----------------------------------------------------'
yum install -y docker
echo '-----------------------------------------------------'
echo 'Hi installing docker Completed from script file'
echo '-----------------------------------------------------'
# install node
echo '-----------------------------------------------------'
echo 'Hi installing node from script file'
echo '-----------------------------------------------------'
yum -y install -y curl
curl https://rpm.nodesource.com/setup_12.x | bash -
yum install -y nodejs
echo '-----------------------------------------------------'
echo 'Hi node installation completed from script file'
echo '-----------------------------------------------------'
# install  git
echo '-----------------------------------------------------'
echo 'Hi installing git from script file'
echo '-----------------------------------------------------'
yum install -y git
echo '-----------------------------------------------------'
echo 'Hi git installation completed from script file'
echo '-----------------------------------------------------'
# install  java
echo '-----------------------------------------------------'
echo 'Hi installing java from script file'
echo '-----------------------------------------------------'
yum install -y java-1.8.0-openjdk
echo '-----------------------------------------------------'
echo 'Hi java installation completed from script file'
echo '-----------------------------------------------------'
# install maven
echo '-----------------------------------------------------'
echo 'Hi installing maven from script file'
echo '-----------------------------------------------------'
yum install -y maven
echo '-----------------------------------------------------'
echo 'Hi maven installation completed from script file'
echo '-----------------------------------------------------'
echo 'Hi setiing up docker  properties'

systemctl enable docker.service
systemctl start docker.service
chmod 666 /var/run/docker.sock
groupadd docker
gpasswd -a $username docker
newgrp docker

echo '-----------------------------------------------------'
echo 'you can check version for  install tool with node -v; npm -version;java -version;docker --version;git --version;mvn -v;'
echo '-----------------------------------------------------'
node -v; npm -version;java -version;docker --version;git --version;mvn -v
echo '-----------------------------------------------------'
echo 'Hi exited execution from script file'
