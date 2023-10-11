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
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'wikitopian/hardmode'
Plug 'vimoutliner/vimoutliner'
Plug 'robbles/logstash.vim'
Plug 'integralist/vim-mypy'
Plug 'petobens/poet-v'
Plug 'github/copilot.vim'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

call plug#end()

let g:airline_theme='bubblegum'

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

" Set Leader
let g:mapleader="\\"

" Python Formatting
let g:ale_fixers = {'python': ['black','isort', 'remove_trailing_lines', 'trim_whitespace'], 'terraform': ['terraform', 'remove_trailing_lines', 'trim_whitespace'], 'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_linters = {'python': ['flake8', 'mypy'], 'terraform': ['terraform'], 'rust': ['rustc']}
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_python_black_auto_poetry = 1
let g:ale_python_flake8_auto_poetry = 1
let g:ale_python_isort_auto_poetry = 1
let g:ale_python_mypy_auto_poetry = 1
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_python_isort_options = '--profile=black'

let g:poetv_executables = ['poetry']
let g:poetv_auto_activate = 1
let g:airline#extensions#poetv#enabled = 1

autocmd FileType python set spell

" vim prettier settings
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

autocmd BufWritePre *.js Prettier
autocmd BufWritePre *.jsx Prettier
autocmd BufWritePre *.css Prettier

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

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" disable to stupid markdown folding
let g:vim_markdown_folding_disabled = 1
