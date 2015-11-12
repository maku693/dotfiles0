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

" Enable mouse
if has('mouse')
  set mouse=a
endif

" NeoBundle
set runtimepath+=/Users/shota/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/Users/shota/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'othree/html5.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'tyru/caw.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'

call neobundle#end()
NeoBundleCheck

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

