" General
set nocompatible
set history=500
filetype plugin indent on

" Editing
set backspace=indent,eol,start
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2
set whichwrap+=b,s,h,l,[,],<,>

" UI
set showcmd
set number
set ruler
set foldcolumn=1
set wildmenu

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
NeoBundle 'slim-template/vim-slim'
NeoBundle 'othree/html5.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'tyru/caw.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
" NeoBundle 'Shougo/vimshell'

call neobundle#end()
NeoBundleCheck

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

" autocmd
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

