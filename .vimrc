set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jpo/vim-railscasts-theme' " colorscheme
Plugin 'scrooloose/nerdtree'      " nerdtree
Plugin 'shougo/neocomplete.vim'   " autocomplete
Plugin 'andviro/flake8-vim'       " python pep8 checker


call vundle#end()
filetype plugin indent on

colorscheme railscasts

" nerdtree settings
map <F5> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
au VimEnter *  NERDTree

" flake8 settings
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
let g:PyFlakeDisabledMessages = 'E501'
let g:PyFlakeCWindow = 6
let g:PyFlakeSigns = 1 
let g:PyFlakeForcePyVersion = 3
