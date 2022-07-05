set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set ruler
set encoding=utf-8
set relativenumber
set smartindent
set ignorecase
" ?
set showmatch
set showcmd
set laststatus=2
set noshowmode
set sw=4
syntax enable

call plug#begin('~/.vim/plugged')
" theme
Plug 'ghifarit53/tokyonight-vim'

" tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'

" sintax
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" status bar
Plug 'itchyny/lightline.vim'

" comment
Plug 'tpope/vim-commentary'

Plug 'easymotion/vim-easymotion'
call plug#end()

" theme
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" mapping
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR> 
nmap <Leader>nq :NERDTreeFind<CR>:q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>; $a;<Esc>
nnoremap <Leader>p :Prettier<CR>

" supertab order
let g:SuperTabDefaultCompletionType = "<c-n>"

" lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
