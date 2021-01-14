sudo apt update
sudo apt-get update
sudo apt upgrade -y
sudo apt autoremove

sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker

sudo apt install curl

sudo curl -L https://github.com/docker/compose/releases/download/1.26.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo groupadd docker
getent group docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker

sudo reboot -h now