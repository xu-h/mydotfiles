if (has('win32') || has('win64') || has('win32unix'))
    let g:python3_host_prog ='D:/Neovim/env3/Scripts/python.exe'
    let g:python_host_prog ='D:/Neovim/env2/Scripts/python.exe'
    
    call plug#begin('D:/Neovim/share/nvim/plugged')
else
    let g:python_host_prog = '/home/code-xu/dev-env/miniconda3/envs/py2neovim/bin/python'
    let g:python3_host_prog = '/home/code-xu/dev-env/miniconda3/envs/py3neovim/bin/python'

    call plug#begin('~/.local/share/nvim/plugged')
endif

" Plug 'Yggdroot/indentLine'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Plug 'scrooloose/nerdtree'

" 美化
Plug 'arcticicestudio/nord-vim'
"Plug 'vim-airline/vim-airline'

" git
" Plug 'mhinz/vim-signify'
" Plug 'tpope/vim-fugitive'

" Plug 'Vimjas/vim-python-pep8-indent' python PEP8 缩进
" Plug 'scrooloose/nerdcommenter' " 增强注释

" 补全
" Plug 'jiangmiao/auto-pairs'     " 括号补全
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
" Plug 'davidhalter/jedi-vim'

" highlight
" Plug'ekalinin/Dockerfile.vim'
" Plug 'cespare/vim-toml'

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

" 自动补全
let g:deoplete#enable_at_startup = 0

" 快捷键
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
