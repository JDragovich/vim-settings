if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'ianks/vim-tsx'
Plug 'w0rp/ale'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'reasonml-editor/vim-reason'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hashivim/vim-terraform'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'

call plug#end()

set number

set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set hlsearch
set autoread


nnoremap <C-S-Left> gT
nnoremap <C-S-Right> gt
nnoremap <C-p> CtrlP
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

let g:vim_jsx_pretty_colorful_config = 1
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 239
