syntax on "enable syntax highlight
set nocompatible "behave in a more usable way
set encoding=utf-8 "use utf-8 encoding
set noswapfile "don't create the annoying swap file
set number "show line numbers
set showmatch "highlight matching [{()}]
set showmode "show the mode we are currently on
set ruler "show the line and column number of the cursor position
set mouse=a "enable use of the mouse
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set shiftwidth=4 "use 4 spaces when tabbing in normal mode
set autoindent "use same indenting when adding a new line
set smartindent "be smarter about autoindenting a new line
set showcmd "show command in bottom bar
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to.
set incsearch "search as characters are entered
set hlsearch "highlight matches
set smartcase "if a search has uppercase characters, override the ignore case
set ignorecase "ignore casing when doing a search
set scrolloff=5 "number of lines to keep above/below the cursor
set listchars=tab:→\ ,space:·,trail:·,eol:¬ "whitespace characters

"dark is better, set to light when using a light color scheme
set background=dark

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
