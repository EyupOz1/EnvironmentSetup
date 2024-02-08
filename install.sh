function out() {
  GREEN='\033[0;32m'
  RESET='\033[0m'
  echo -e "${GREEN}$1${RESET}"
}

out "adding repo and updating system"
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt -y update
sudo apt -y upgrade

out "installing other apt packages"
sudo apt -y install git build-essential ripgrep unzip fd
out "installing nvim"
sudo apt -y install neovim

out "installing node"
curl -sL https://deb.nodesource.com/setup_20.x -o /tmp/nodesource_setup.sh 
sudo bash /tmp/nodesource_setup.sh && sudo apt install nodejs -y 
node -v 
npm -v 

sudo npm install neovim -g
