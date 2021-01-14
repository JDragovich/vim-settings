if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'ianks/vim-tsx'
Plug 'w0rp/ale'
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
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'wikitopian/hardmode'
Plug 'vimoutliner/vimoutliner'

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

autocmd FileType markdown set conceallevel=0
autocmd FileType markdown set spell
autocmd FileType markdown set linebreak

autocmd FileType tex set linebreak

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
