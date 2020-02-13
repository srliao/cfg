
#docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


#vim plugins
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/filetypes/start/vim-go
git clone https://github.com/posva/vim-vue.git ~/.vim/pack/filetypes/start/vim-vue
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/filetypes/start/vim-prettier
git clone https://github.com/MaxMEllon/vim-jsx-pretty.git ~/.vim/pack/filetypes/start/vim-jsx-pretty
git clone https://github.com/dense-analysis/ale.git ~/.vim/pack/filetypes/start/ale

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/pack/all/start/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/all/start/vim-airline
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/all/start/vim-fugitive
