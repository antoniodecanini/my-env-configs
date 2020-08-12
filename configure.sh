#!/bin/bash

## Remove apt block
sudo rm  /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

## Update repositories
sudo apt update

## Install curl
sudo apt install curl

## Install git
sudo apt install git

## Install node
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

## Install yarn
sudo npm install -g yarn

## Install ZSH
sudo apt install zsh

## Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Install FiraCode font
sudo apt install fonts-firacode

## Install Spaceship zsh theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

## Install ZInit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

## Create projects folder
mkdir www
cd www

## Clone my-env-configs
git clone https://github.com/antoniodecanini/my-env-configs.git
cd my-env-configs

## Create Hyper and Zsh configs
cp configs/.hyper ~
cp configs/.zshrc ~

## Install vsCode extensions
code
code --install-extension alexcvzz.vscode-sqlite
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension esbenp.prettier-vscode
code --install-extension eseom.nunjucks-template
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension mikestead.dotenv
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension naumovs.color-highlight
code --install-extension PKief.material-icon-theme
code --install-extension Prisma.vscode-graphql
code --install-extension ritwickdey.LiveServer
code --install-extension ms-azuretools.vscode-docker

## Replace vsCode configs
cp configs/settings.json ~/.config/Code/User/settings.json

## Install Docker
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

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# Ass user to Docker group
sudo groupadd docker
sudo usermod -aG docker $USER