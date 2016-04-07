" General
set autoread
set nocompatible
set ttyfast

" Editing
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

" UI
set ambiwidth=double
set colorcolumn=80
set clipboard=unnamed,autoselect
set foldcolumn=1
set hidden
set langnoremap
set laststatus=2
set mouse=a
set nowrap
set number
set ruler
set showcmd
set whichwrap+=b,s,h,l,[,],<,>
set wildmenu

" Status line
set laststatus=2
set statusline=%<%f\ %m%r%h%w\ %l:%c
set statusline+=%=[%{&fenc!=''?&fenc:&enc}][%{&ff}]

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Backup
set nowb
set noswapfile

" Completion
set omnifunc=syntaxcomplete#Complete

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'tyru/caw.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css'] }
Plug 'othree/yajs.vim', { 'for': ['html', 'javascript'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
call plug#end()

" Colorscheme
colorscheme usual
let g:cpp_class_scope_highlight=1
syntax on

" Netrw
let g:netrw_banner=0

" Keymaps
" Don't use Ex mode, use Q for formatting
map Q gq 
" Window
nnoremap <M-s> :<C-u>sp<CR>
nnoremap <M-v> :<C-u>vs<CR>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <M-H> <C-w><
nnoremap <M-L> <C-w>>
" Tab
nnoremap <M-t> :<C-u>tabnew<CR>
" Clear highlights
nnoremap <CR> :<C-u>noh<CR><CR>
" caw.vim
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

