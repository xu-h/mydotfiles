let g:python3_host_prog ='D:/Neovim/env3/Scripts/python.exe'
let g:python_host_prog ='D:/Neovim/env2/Scripts/python.exe'

call plug#begin('D:/Neovim/share/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

Plug 'scrooloose/nerdtree'

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Plug 'Vimjas/vim-python-pep8-indent' python PEP8 缩进
" Plug 'scrooloose/nerdcommenter' " 增强注释

" 补全
Plug 'jiangmiao/auto-pairs'     " 括号补全
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

" markdown support
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" highlight
" Plug'ekalinin/Dockerfile.vim'
Plug 'cespare/vim-toml'

call plug#end()

set noswapfile
set smartcase

set splitright
set splitbelow

" Enable GUI mouse behavior
set mouse=a

" tab 
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" 搜索
set incsearch
set hlsearch

" 显示相关
colorscheme nord
set noruler
set nowrap

" sidebar 
set number
let g:signify_vcs_list = [ 'git' ]

" status bar (airline)
set noshowcmd
set noshowmode
let g:airline_powerline_fonts = 1

" file tree
"augroup nerd_tree
    " autocmd!
    " open NERDTree if no file were specified when nvim startup
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " close vim if NERDTree is the last window
    " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" augroup END

" 自动补全
let g:deoplete#enable_at_startup = 0
" let g:deoplete#enable_logging("DEBUG")

" 快捷键
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
map <F3> :NERDTreeToggle<CR>
inoremap <C-v> <ESC>"+Pa
