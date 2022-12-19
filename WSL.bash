NODE_VERSION=14
PYTHON_VERSION=3

# Setups
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install curl cmake gcc g++ make software-properties-common

# Git
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt-get update && sudo apt-get install git -y

# Python, PyEnv & Pip
sudo apt-get install python${PYTHON_VERSION} python${PYTHON_VERSION}-distutils
wget -qO- https://bootstrap.pypa.io/get-pip.py | sudo python${PYTHON_VERSION}

# Tmux & TmuxP
sudo apt-get install tmux -y
pip install --user tmuxp

# NVM, NodeJs & Yarn
curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo npm install -g gulp-cli yarn
yarn add stylelint stylelint-scss
    
# SSH
cp -R /mnt/c/Users/eladr/Projects/Config/.ssh $HOME/.ssh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

# Symlinks
ln -s /mnt/c/Users/eladr/Projects/Config/.gitconfig $HOME/
ln -s /mnt/c/Users/eladr/Projects/Config/.tmux.conf $HOME/
ln -s /mnt/c/Users/eladr/Projects/Config/.tmuxp $HOME/.tmuxp
