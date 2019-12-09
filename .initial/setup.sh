#!/bin/bash

#update system
sudo apt update

#go
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go -y

#nodejs
sudo snap install node --channel=13/stable --classic


#docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker ${USER}

#docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


#vim plugins
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/filetypes/start/vim-go
git clone https://github.com/posva/vim-vue.git ~/.vim/pack/filetypes/start/vim-vue
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/filetypes/start/vim-prettier

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/pack/all/start/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/all/start/vim-airline
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/all/start/vim-fugitive

#pull out configs
git clone --bare https://github.com/srliao/cfg.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

