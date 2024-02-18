#!/bin/bash

function out() {
	GREEN='\033[0;32m'
	RESET='\033[0m'
	echo -e "${GREEN}$1${RESET}"
}

out "Add nvim ppa and Update/Upgrade"
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt -qq -y update
sudo apt -qq -y upgrade

# Install basic packages
packages=("git" "build-essential" "ripgrep" "unzip" "fd-find" "lazygit")

for element in "${packages[@]}"; do
	out "Installing $element"
	sudo apt-get -q -y install "$element"
done

out "installing node"
curl -sL https://deb.nodesource.com/setup_20.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh && sudo apt-get -q install nodejs -y
node -v
npm -v

sudo npm install neovim -g
sudo apt-get -q -y install neovim
