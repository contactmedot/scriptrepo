#!/bin/sh
echo '-----------------------------------------------------'
echo 'Hi this is  executing  from script file'
echo '-----------------------------------------------------'
# install docker
echo '-----------------------------------------------------'
echo 'Hi installing docker from script file'
echo '-----------------------------------------------------'
yum install -y docker
systemctl enable docker.service
systemctl start docker.service
echo '-----------------------------------------------------'
echo 'Hi installing docker Completed from script file'
echo '-----------------------------------------------------'
