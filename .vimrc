if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-sensible'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'mtth/scratch.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

set number

set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set hlsearch
set autoread
set splitbelow
set splitright

autocmd FileType makrdown set conceallevel=0
autocmd FileType makrdown set spell

map <Esc>[1;10D <C-W><C-H>
map <Esc>[1;10C <C-W><C-L>
map <Esc>[1;10A <C-W><C-J>
map <Esc>[1;10B <C-W><C-K>
nnoremap <C-S-Left> gT
nnoremap <C-S-Right> gt
nnoremap <C-p> CtrlP
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

let g:indentLine_char = '⎸'
let g:indentLine_color_term = 239
let g:jsx_ext_required = 1
let g:syntastic_javascript_jshint_exec='/Users/joseph.dragovich/.nvm/versions/node/v6.17.0/bin/jshint'
let g:syntastic_javascript_checkers = ['jshint']

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
