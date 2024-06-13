sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce=18.06.1~ce~3-0~ubuntu -y

sudo usermod -aG docker ansible

sudo chmod 777 /etc/default/docker

sudo echo "DOCKER_OPTS=\"-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock\"" >>  /etc/default/docker

sudo update-rc.d docker defaults

sudo bash -c 'cat /vagrant/docker.service > /lib/systemd/system/docker.service'

sudo systemctl daemon-reload

service docker restart
