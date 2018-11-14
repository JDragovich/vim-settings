if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'w0rp/ale'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace' "highlight whitespace and provides StripWhitespace autocmd
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/alampros/vim-styled-jsx.git'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'reasonml-editor/vim-reason'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

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

let g:vim_jsx_pretty_colorful_config = 1
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 239
