" set
set path+=**

set wildmode=longest,list,full
set wildmenu
" ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

set exrc " sources local vimrc
set relativenumber
set nu " precede each line with a number
set noerrorbells
set ignorecase
set smartcase " ignore case except when using capital letters
set nohlsearch " unhighlight after moving from search
set incsearch
set scrolloff=10 " start scrolling n away from bottom
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set cmdheight=1
set updatetime=50
set hidden " keep buffers open in the background
set showcmd

" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" maps
let mapleader = "\<Space>"
" move display lines rather than logical with wrap
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
vnoremap j gj
vnoremap gj j
vnoremap k gk
vnoremap gk k

inoremap jk <ESC>

" Move a line up and down
nnoremap <A-j> :<C-u>silent! move+<CR>==
nnoremap <A-k> :<C-u>silent! move-2<CR>==
xnoremap <A-j> :<C-u>silent! '<,'>move'>+<CR>gv=gv
xnoremap <A-k> :<C-u>silent! '<,'>move-2<CR>gv=gv

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>01~

" theme
colorscheme ron 
