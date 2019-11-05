syntax on

" setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set noerrorbells
set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set list
set listchars=tab:\▸\-
set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

imap <C-l> <esc>
map <C-n> :NERDTreeToggle<CR>
set backspace=indent,eol,start 
hi Comment ctermfg=3

let g:python3_host_prog = expand('/usr/bin/python3')
let g:molokai_original = 1
let g:rehash256 = 1

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.vim/dein/dein.toml', {'lazy': 0})
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
  if dein#check_install()
      call dein#install()
  endif
endif

filetype plugin indent on
