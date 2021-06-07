syntax on
set nocompatible
set encoding=utf-8
set noswapfile
set number
set showmatch
set showmode
set ruler
set mouse=a
set cursorline
set autoindent
set smartindent
set smartcase
set incsearch
set guicursor=n-v-c-i:block-Cursor
set background=dark
colorscheme monokai
filetype off

if has("gui_running")
	set guioptions -=T
	if has("gui_gtk2") || has("gui_gtk3")
		set guifont=Consolas\ 13
	else
		set guifont=Consolas:h16
	endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'fatih/vim-go'
Plugin 'darrikonn/vim-gofmt'
Plugin 'preservim/nerdtree'
Plugin 'sickill/vim-monokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'olivertaylor/vacme'

call vundle#end()            " required
filetype plugin indent on

nmap <leader>b :NERDTreeToggle<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>o :CtrlPBuffer<CR>
