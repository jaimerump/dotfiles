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

# Resize/Reposition screens for dual monitors
# Assume 1920x1080 external monitor, double scale, side by side
xrandr --output DP-1 --scale 2x2 --mode 1920x1080 --fb 7680x2160 --pos 0x0
# Put built-in screen to the right of double scale 1920x1080 monitor
xrandr --output eDP-1 --scale 1x1 --pos 3840x0