#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle

#Pathogen:

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Powerline

sudo apt-get install python-pip git
pip install --user git+git://github.com/Lokaltog/powerline

# add to ~/.profile
echo "if \[ \-d \"\$HOME\/\.local\/bin\" \]\; then" >> ~/.profile
echo "    PATH\=\"\$HOME\/\.local\/bin\:\$PATH\"" >> ~/.profile
echo "fi" >> ~/.profile

#fonts
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# solarized scheme
cd ~/.vim/bundle/
git clone https://github.com/altercation/vim-colors-solarized

# ctrlp vim
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git

# python mode

cd ~/.vim/bundle
git clone https://github.com/klen/python-mode

# nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# nerdcommenter

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git

# ack.vim

cd ~/.vim/bundle
git clone https://github.com/mileszs/ack.vim.git

