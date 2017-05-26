"""""""""""""""""""""""""""""""""""""""""""""""""""
" Essential
"""""""""""""""""""""""""""""""""""""""""""""""""""
" UTF-8 support
set encoding=utf-8

" normal backspace
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""
" key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""
" map space to leader
map <Space> <leader>

" copy to system clipboard
vnoremap <leader>y "*y

" paste from system clipboard
nmap <leader>p "*p

" easy write and quit
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>e :wq<CR>

" quick back to normal
inoremap jk <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Display
"""""""""""""""""""""""""""""""""""""""""""""""""""
" set number
set number
set relativenumber

" position in the status bar
set ruler

" highlight while searching with / or ?
set incsearch

" show the mode we're using if not normal mode
set showmode

" show the keystrokes being entered in the screen
set showcmd


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Coding
"""""""""""""""""""""""""""""""""""""""""""""""""""
" stay on the same line
set nowrap

syntax enable
syntax on

" tabs setting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Others
"""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore case when searching
set ignorecase
set infercase
set smartcase

" increase command history
set history=200

" enable mouse for scrolling and window resizing
set mouse=a

" more natural split
set splitbelow
set splitright


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " Color Schemes
    Plugin 'flazz/vim-colorschemes'

    " SQL highlights
    Plugin 'aliou/sql-heredoc.vim'
    Plugin 'JessicaKMcIntosh/Vim'

    " Fuzzy Finder
    Plugin 'junegunn/fzf'

    " YCM
    Plugin 'Valloric/YouCompleteMe'

    " Nerdtree
    Plugin 'scrooloose/nerdtree'
        map <C-n> :NERDTreeToggle<CR>
        let NERDTreeWinSize=32
        let NERDTreeWinPos="left"
        let NERDTreeShowHidden=0
        let NERDTreeMinimaUI=1
        let NERDTreeAutoDeleteBuffer=1
        let NERDTreeIgnore=['\.pyc','\.swp']

    " utils
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'bronson/vim-trailing-whitespace'

    " markdown support
    Plugin 'godlygeek/tabular'
    Plugin 'plasticboy/vim-markdown'

" end vundle, all Plugins must added before the following line
call vundle#end()         " required
filetype plugin indent on " required

" set color
colorscheme Tomorrow-Night-Eighties
set background=dark

