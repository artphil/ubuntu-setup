#!/usr/bin/env bash

###############################################################################
################## Instalacao dos Softwares padroes - Ubuntu ##################
###############################################################################

sh -c 'cd /tmp'

echo "Installing Curl ..."
sudo apt install curl -y

echo "Installing Chrome ..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt install google-chrome-stable -y

echo "Installing Code ..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code -y

echo "Installing Telegram ..."
sudo apt install telegram-desktop -y

echo "Installing Zsh (interface terminal) - custom : $ vi ~/.zshrc"
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) $(whoami)


sh -c 'cd'
###############################################################################
