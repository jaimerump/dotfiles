# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Apps
choco install -y googlechrome
choco install -y firefox
choco install -y spotify
choco install -y steam
choco install -y brave --pre

# Core developer tools
choco install -y git.install
git config --global user.email "jaime.lee.rump@gmail.com"
git config --global user.name "Jaime Rump"

# Editors
choco install -y vscode

# Cloud
choco install -y awscli
choco install -y gcloudsdk

# Devops
choco install -y virtualbox
choco install -y vagrant
choco install -y kubernetes-cli minikube
choco install -y terraform
choco install -y docker-compose docker-cli docker-desktop

# Programming languages
choco install -y nodejs.install nvm
choco install -y jdk8
choco install -y python3
choco install -y ruby
choco install -y golang

# Data
choco install -y redis redis-desktop-manager
choco install -y mongodb
choco install -y postgresql