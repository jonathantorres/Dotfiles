set encoding=utf-8
set hidden
set number
set showmatch
set showmode
set ruler
set mouse=a
set cursorline
set list
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab "disable this at work ;)
set autoindent
set copyindent
set preserveindent

set novisualbell
set noerrorbells
if exists('&belloff')
    set belloff=all
endif

filetype on
filetype plugin on
filetype indent on

" Text files
autocmd Filetype markdown,mail,text setlocal textwidth=72

" Makefiles
autocmd FileType make setlocal shiftwidth=8

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Color scheme and airline
syntax on
let g:airline_theme = "simple"
let g:enable_bold_font = 1
set background=light
colorscheme hybrid_material

