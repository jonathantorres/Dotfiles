syntax on "enable syntax highlight
set nocompatible "behave in a more usable way
set encoding=utf-8 "use utf-8 encoding
set noswapfile "don't create the annoying swap file
set number "show line numbers
set showmatch "highlight matching [{()}]
set showmode "show the mode we are currently on
set ruler "show the line and column number of the cursor position
set mouse=a "enable use of the mouse
set cursorline "highlight current line
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set shiftwidth=4 "use 4 spaces when tabbing in normal mode
set showcmd "show command in bottom bar
set wildmenu "visual autocomplete for command menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "ignore these file patterns
set lazyredraw "redraw only when we need to.
set incsearch "search as characters are entered
set hlsearch "highlight matches
set foldenable "enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
set foldmethod=indent "fold based on indent level
set scrolloff=5 "number of lines to keep above/below the cursor

" setttings to research and enable at some point
"set autoindent
"set smartindent
"set smartcase

" gui cursor settings
set guicursor=n-v-c:block-Cursor 
set guicursor+=i:ver25-iCursor

"options for gui version
if has("gui_running")
	set guioptions -=T "remove toolbar
	"use Consolas font and a bigger font size
	if has("gui_gtk2") || has("gui_gtk3")
		set guifont=Consolas\ 13
	else
		set guifont=Consolas:h16
	endif
endif

" Use Vundle to manage plugins
filetype off "required for bundle
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'olivertaylor/vacme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'preservim/nerdtree'
"Plugin 'darrikonn/vim-gofmt'
call vundle#end() "end vundle configuration

filetype indent on "load filetype-specific indent files

" Color Scheme settings
"dark is better, set to light when using a light color scheme
set background=dark
colorscheme gruvbox

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$',
  \ }

" Leader key stuff to research and enable at some point
"nmap <leader>b :NERDTreeToggle<CR>
"nmap <leader>p :CtrlP<CR>
"nmap <leader>o :CtrlPBuffer<CR>
