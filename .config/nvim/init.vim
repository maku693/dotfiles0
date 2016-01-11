" Editing
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2

" UI
set showcmd
set number
set ruler
set foldcolumn=1
set hidden
set whichwrap+=b,s,h,l,[,],<,>

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
call plug#begin('~/.config/nvim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'terryma/vim-multiple-cursors'
Plug 'tyru/caw.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
call plug#end()

" Netrw
let g:netrw_banner=0

" Color scheme
let g:hybrid_custom_term_colors = 1
set background=dark
colorscheme hybrid

" Keymaps
" Don't use Ex mode, use Q for formatting
map Q gq 
" Exit by Esc in terminal mode
tnoremap <Esc> <C-\><C-n>
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

