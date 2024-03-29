# Install snap
sudo apt update && sudo apt upgrade -y
sudo apt-get install curl
sudo apt install snapd

# Windows interop utils
sudo apt-get install exfat-fuse exfat-utils

# Browsers/Apps
sudo snap install firefox
sudo snap install chromium
sudo snap install inkdrop
sudo snap install spotify
sudo snap install slack --classic
sudo apt install snapd-xdg-open
sudo snap install discord

# Flux
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get install fluxgui

# Albert (Alfred equivalent)
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get install albert
# Start albert on startup
cp /usr/share/applications/albert.desktop ~/.config/autostart/ && chmod +x ~/.config/autostart/albert.desktop

# Development tools
sudo apt install git
git config --global user.email "jaime.lee.rump@gmail.com"
git config --global user.name "Jaime Rump"
sudo snap install postman
sudo snap install intellij-idea-community --classic
sudo snap install code --classic
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# Airflow
pip install apache-airflow==1.10.15
pip install apache-airflow[postgres]==1.10.15
airflow db init
airflow users create --username jaimerump --firstname Jaime --lastname Rump --role Admin --email jaime.lee.rump@gmail.com


# Programming languages
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

sudo apt-get install gcc g++ make

# Go and Martin go dependencies
cd /tmp 
curl -OL https://golang.org/dl/go1.14.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go*.tar.gz
export PATH=/usr/local/go/bin:$PATH
go get -u golang.org/x/lint/golint
go get -u google.golang.org/grpc
go get github.com/golang/protobuf/protoc-gen-go@v1.3.4 

sudo snap install ruby --classic

# Python
sudo apt-get install python3.6 
python -m pip install virtualenv
python -m pip install jupyterlab

# Java
sudo apt-get install openjdk-8-jdk
sudo apt install maven

# Install Java 13 for Clojure
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java13-installer
sudo apt install oracle-java13-set-default
# Clojure
curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > lein
sudo mv lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein
lein version

sudo apt-get install -y bash curl rlwrap
curl -O https://download.clojure.org/install/linux-install-1.10.1.462.sh
chmod +x linux-install-1.10.1.462.sh
sudo ./linux-install-1.10.1.462.sh
clj 

# Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get install erlang
sudo apt-get install elixir

# Data
sudo apt install redis-server
sudo snap install redis-desktop-manager
sudo apt install postgresql-common
sudo sh /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
sudo apt-get install postgresql-12
go get -u github.com/pressly/goose/cmd/goose
sudo apt install mongodb
sudo snap install robo3t-snap

# Scylla
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 5e08fbd8b5d6ec9c
sudo curl -L --output /etc/apt/sources.list.d/scylla.list http://downloads.scylladb.com/deb/ubuntu/scylla-4.5-$(lsb_release -s -c).list
sudo apt-get update
sudo apt-get install -y scylla
pip install cqlsh

# Set up postgres
sudo /etc/init.d/postgresql start
sudo su postgres
# Enter password 
createdb martin-local
createuser martin-local -dlrsP
# Create password

# Cloud

# AWS
pip install awscli --upgrade --user

# GCloud
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get install apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk

# Devops
sudo apt-get install virtualbox virtualbox-ext-pack

# NATS
wget https://github.com/nats-io/natscli/releases/download/v0.0.30/nats-0.0.30-amd64.deb && sudo dpkg -i nats-0.0.30-amd64.deb

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Telepresence
sudo curl -fL https://app.getambassador.io/download/tel2/linux/amd64/latest/telepresence -o /usr/local/bin/telepresence
sudo chmod a+x /usr/local/bin/telepresence

## Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add - 
sudo apt-get update && sudo apt-get install terraform

# Install docker
sudo apt-get install \
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
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER

# Install docker-compose, couldn't find snap or apt package
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# docker-compose command completion
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.24.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# Resize/Reposition screens for dual monitors
# Assume 1920x1080 external monitor, double scale, side by side
xrandr --output DP-2 --scale 2x2 --mode 1920x1080 --fb 7680x2160 --pos 0x0
# Put built-in screen to the right of double scale 1920x1080 monitor
xrandr --output eDP-1 --scale 1x1 --pos 3840x0
# Persist xrandr settings
sudo apt install autorandr
# Save and load settings
autorandr --save work
autorandr --change work
# Reset when disconnecting
xrandr --output eDP-1 --scale 1x1 --pos 0x0
autorandr --save laptop
autorandr --change laptop

xrandr --output DP-2 --scale 2x2 --mode 1920x1080 --fb 7680x2160 --pos 3840x0 --primary
xrandr --output eDP-1 --scale 1x1 --fb 7680x2160 --pos 0x0 
autorandr --save home 