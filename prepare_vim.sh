

# clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc
cp .vimrc ~/.vimrc

# install all plugins
vim +PluginInstall +qall
