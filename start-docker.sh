#!/bin/bash

# install docker
apt update
apt install python3-pip net-tools openssh-server -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh --mirror AzureChinaCloud

#sh get-docker.sh --mirror Aliyun

#docker swarm
docker swarm init
docker node update --label-add='name=linux-1' $(docker node ls -q)

#docker registry
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://docker.mirrors.sjtug.sjtu.edu.cn"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

# install docker-compose
pip3 install requests -U -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip3 install docker-compose -i https://pypi.tuna.tsinghua.edu.cn/simple/
