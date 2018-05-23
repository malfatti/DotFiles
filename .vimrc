"=== Vundle settings ==="

"set nocompatible              " required
filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'gmarik/Vundle.vim' " Required!
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Plugin 'Valloric/YouCompleteMe'
" Remember to:
" cd ~/.vim/bundle/YouCompleteMe/YCMBuild
" cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp

"call vundle#end()            " required
filetype plugin indent on    " required
syntax on


"=== Behaviour ==="
autocmd! bufwritepost .vimrc source %

set foldmethod=indent
set foldlevel=99

set history=700
set undolevels=700


"=== Keys ==="
set pastetoggle=<F2>

" Leader key
let mapleader = ","

" Splits
map <Leader>b :sp 
map <Leader>r :vs 
map <c-j> <c-w><c-j>
map <c-k> <c-w><c-k>
map <c-l> <c-w><c-l>
map <c-h> <c-w><c-h>

" Tabs
map <Leader>o :tabnew 
map <Leader>j :tabprevious<CR>
map <Leader>k :tabnext<CR>

" Indentation
vnoremap < <gv
vnoremap > >gv

" Paragraph wrap
nmap Q gqap


"=== Lines ==="
set showmatch		" Show matching brackets.
set tw=0		" Break line at
set colorcolumn=80

" word wrap
set wrap
set linebreak
set nolist


"=== Tab indent ==="
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


"=== Colors ==="
set t_Co=256
highlight ColorColumn ctermbg=233

