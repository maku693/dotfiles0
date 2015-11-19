" General
set nocompatible
set history=500

" Editing
set backspace=indent,eol,start
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" UI
set showcmd
set number
set ruler
set foldcolumn=1
set wildmenu
set hidden
set whichwrap+=b,s,h,l,[,],<,>

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Backup
set nowb
set noswapfile

" Remember last position
au BufReadPost * 
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g'\"" |
  \ endif

" Enable mouse
if has('mouse')
  set mouse=a
endif

" vim-plug
call plug#begin('~/.vim/plugged')

" Bundles
Plug 'w0ng/vim-hybrid'
Plug 'tyru/caw.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'tikhomirov/vim-glsl'

call plug#end()

" autoindent
filetype plugin indent on

" Color Scheme
set background=dark
colorscheme hybrid
syntax on

" Filer
let g:vimfiler_as_default_explorer = 1

" Keymaps
" Don't use Ex mode, use Q for formatting
map Q gq 
" Clear highlights
nnoremap <CR> :<C-u>noh<CR><CR>
" caw.vim
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

