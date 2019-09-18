# Install Homebrew
# Don't copy multiple lines because the Homebrew installation will ask for password
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install git
brew install git

# Install thefuck
brew install thefuck

### Languages

# Install node
brew install nvm
# Update .bash_profile as it says
nvm ls-remote # Get node versions
nvm install $latest # Whatever nvm's latest version is
npm install -g pm2 nodemon mocha # Install universal packages

# Install python
# OS has python2.7 installed
# Go to https://www.anaconda.com/distribution/#macos

# Install go
# Download package installer from https://golang.org/dl/
brew install dep

### Database

# Install mongo
brew install mongodb # Also installs mongo-tools

# Install postgres
brew install postgresql

# Install redis
brew install redis
brew services start redis # Have it running in the background all the time

### Cloud

# Install google cloud command line
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud init # Opens Oauth screen in browser

# Install aws cli
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

### Devops

# Install docker
# Go to https://docs.docker.com/docker-for-mac/install/

# Install kubernetes
brew install kubernetes-cli
brew cask install minikube
# Download virtualbox from here
# https://www.virtualbox.org/wiki/Downloads
# If installation fails, check this
# https://medium.com/@DMeechan/fixing-the-installation-failed-virtualbox-error-on-mac-high-sierra-7c421362b5b5

# Install terraform
brew install terraform
