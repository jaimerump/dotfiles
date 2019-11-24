# Install snap
sudo apt update && sudo apt upgrade -y
sudo apt-get install curl
sudo apt install snapd

# Windows interop utils
sudo apt-get install exfat-fuse exfat-utils

# Browsers
sudo snap install firefox
sudo snap install chromium
sudo snap install inkdrop

# Development tools
sudo apt install git
git config --global user.email "jaime.lee.rump@gmail.com"
git config --global user.name "Jaime Rump"
sudo snap install postman
sudo snap install intellij-idea-community --classic
sudo snap install code --classic
sudo apt install thefuck

# Programming languages
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
sudo snap install go --classic
sudo snap install ruby --classic
sudo apt-get install python3.6
sudo apt-get install openjdk-8-jdk

# Data
sudo apt install redis-server
sudo snap install redis-desktop-manager
sudo snap install postgresql
sudo apt install mongodb
sudo snap install robo3t-snap

# Cloud
sudo snap install aws-cli --classic
sudo snap install google-cloud-sdk --classic

# Devops
sudo snap install kubectl --classic
sudo snap install terraform
sudo apt-get install virtualbox virtualbox-ext-pack
sudo snap install kubectl --classic
sudo snap install docker

# Install docker-compose, couldn't find snap or apt package
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# docker-compose command completion
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.24.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
