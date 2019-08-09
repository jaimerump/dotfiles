# Install Homebrew
# Don't copy multiple lines because the Homebrew installation will ask for password
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install git
brew install git

# Install thefuck
brew install thefuck

# Install node
brew install nvm
# Update .bash_profile as it says
nvm ls-remote # Get node versions
nvm install $latest # Whatever nvm's latest version is
npm install -g pm2 nodemon mocha # Install universal packages

# Install python

# Install mongo

# Install mongo-tools

# Install redis

# 
