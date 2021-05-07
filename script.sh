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
# install kubectl
echo '-----------------------------------------------------'
echo 'Hi installing kubectl from script file'
echo '-----------------------------------------------------'
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod 755 kubectl
mv ./kubectl /usr/local/bin/kubectl
echo '-----------------------------------------------------'
echo 'Hi kubectl installation completed from script file'
echo '-----------------------------------------------------'
# Azure CLI Install
echo ' starting Azure CLI install'
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/azure-cli.repo
yum  install azure-cli -y
echo 'CLI install completed'

echo 'Hi setiing up docker  properties'mv ./kubectl /usr/local/bin/kubectl
systemctl enable docker.service
systemctl start docker.service
chmod 666 /var/run/docker.sock
groupadd docker
gpasswd -a $username docker
newgrp docker

echo '-----------------------------------------------------'
echo 'you can check version for  install tool with node -v; npm -version;java -version;docker --version;git --version;mvn -v;'
echo '-----------------------------------------------------'
node -v; npm -version;java -version;docker --version;git --version;mvn -v;kubectl version --client -o json; az version
echo '-----------------------------------------------------'
echo 'Hi exited execution from script file'
