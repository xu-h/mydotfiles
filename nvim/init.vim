let g:python3_host_prog ='D:/Neovim/env3/Scripts/python.exe'
let g:python_host_prog ='D:/Neovim/env2/Scripts/python.exe'

call plug#begin('D:/Neovim/share/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

Plug 'scrooloose/nerdtree'

" 美化
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

" git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Plug 'Vimjas/vim-python-pep8-indent' python PEP8 缩进
" Plug 'scrooloose/nerdcommenter' " 增强注释

" 补全
Plug 'jiangmiao/auto-pairs'     " 括号补全
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

" Markdown Support
Plug 'iamcco/mathjax-support-for-mkdp', { 'for': ['markdown'] }
Plug 'iamcco/markdown-preview.vim', { 'for': ['markdown'] }

" Latex
Plug 'lervag/vimtex'

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

" 自动补全
let g:deoplete#enable_at_startup = 0

" latex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'mupdf'

" 快捷键
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
map <F3> :NERDTreeToggle<CR>
inoremap <C-v> <ESC>"+Pa
autocmd FileType tex nnoremap <F8> :VimtexCompile<CR>
