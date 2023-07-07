syntax on "enable syntax highlight
set nocompatible "behave in a more usable way
set encoding=utf-8 "use utf-8 encoding
set noswapfile "don't create the annoying swap file
set number "show line numbers
set showmatch "highlight matching [{()}]
set mouse=a "enable use of the mouse
set cursorline "highlight current line
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set shiftwidth=4 "use 4 spaces when tabbing in normal mode
set autoindent "use same indenting when adding a new line
set smartindent "be smarter about autoindenting a new line
set showcmd "show command in bottom bar
set wildmenu "visual autocomplete for command menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "ignore these file patterns
set lazyredraw "redraw only when we need to.
set incsearch "search as characters are entered
set hlsearch "highlight matches
set smartcase "if a search has uppercase characters, override the ignore case
set ignorecase "ignore casing when doing a search
set foldenable "enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
set foldmethod=indent "fold based on indent level
set scrolloff=5 "number of lines to keep above/below the cursor
set relativenumber "enable relative line numbers
set listchars=tab:→\ ,space:·,trail:·
set list
set ruler
set timeoutlen=1000
set ttimeoutlen=0

" set python 2 and 3 executable path
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"options for gui version
if has("gui_running")
    "gui cursor settings
    set guicursor=n-v-c:block-Cursor "block cursor in normal, visual and command mode
    set guicursor+=i:ver25-iCursor "vertical cursor in insert mode
    set guioptions -=T "remove toolbar
    set guioptions -=m "remove the menu bar
    set guioptions -=r "remove right scrollbar
    set guioptions -=L "remove left scrollbar

    "use Consolas font and a bigger font size
    if has("gui_gtk2") || has("gui_gtk3")
        set guifont=Consolas\ 13
    else
        set guifont=Consolas:h16
    endif
endif

if has("nvim")
    " bad habits
    unmap Y
else
    " good old vim
    " use a line cursor in insert mode and a block cursor in normal and replace mode
    let &t_SI = "\e[5 q"
    let &t_SR = "\e[ q"
    let &t_EI = "\e[ q"
endif

" Use Vundle to manage plugins
filetype off "required for bundle
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'darrikonn/vim-gofmt'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-obsession'
Plugin 'machakann/vim-highlightedyank'
Plugin 'LunarWatcher/auto-pairs'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'qpkorr/vim-bufkill'
call vundle#end() "end vundle configuration

filetype plugin indent on "load filetype-specific indent files

" clang-format settings
" run clang format when saving a C++ file
function ClangFormatFile()
    let l:lines="all"
    py3f /home/jonathan/clang-format.py
endfunction
autocmd BufWritePre *.c call ClangFormatFile()
autocmd BufWritePre *.h call ClangFormatFile()
autocmd BufWritePre *.cpp call ClangFormatFile()
autocmd BufWritePre *.hpp call ClangFormatFile()

" Go settings
" run :GoImports when saving a .go file
autocmd BufWritePre *.go GoImports

" Color Scheme settings
"dark is better, set to light when using a light color scheme
set background=dark
colorscheme gruvbox

" fzf settings
let g:fzf_preview_window = [] " no preview window
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" leader key and mappings
let mapleader = " "
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>r :BTags<CR>
nnoremap <leader>w <c-w>w
nnoremap <leader>v "+p
vnoremap <leader>c "+y

" toggle nerdtree
nnoremap <leader>b :NERDTreeToggle<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" nerdtree settings
let NERDTreeMouseMode = 3

" buffkill settings
" remove a bunch of mappings added by the plugin
" always use :bd to actually run :BD to delete a buffer
let g:BufKillCreateMappings = 0
cabbrev bd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'BD' : 'bdelete')<CR>
