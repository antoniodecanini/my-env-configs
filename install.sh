#!/bin/bash

# Update and upgrade system
sudo apt update && sudo apt upgrade

# Install zsh and set it as default shell
sudo apt install zsh && chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install Spaceship theme for zsh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Replace zsh with my config
cd && mkdir www && cd www
git clone https://github.com/antoniodecanini/my-env-configs.git
cp my-env-configs/configs/.zshrc ~
cp my-env-configs/configs/.spaceshiprc.zsh ~

# Install NVM, latest LTS Node.js and enable yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install --lts
corepack enable yarn

# Remove my-env-configs folder
cd ~ && rm -rf www/my-env-configs

# Restart zsh
zsh