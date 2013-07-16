" Disable Vi compatibility
    set nocompatible

" Setup vundle
    set runtimepath+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    Bundle 'zeis/vim-kolor'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'kien/ctrlp.vim'
    Bundle "myusuf3/numbers.vim"
    Bundle "scrooloose/nerdcommenter"

" General settings
    set encoding=utf-8
    set ttyfast
    set spell
    set backspace=indent,eol,start
    set mouse=a
    set undofile
    set hidden
    au FocusLost * :wa
    filetype plugin indent on

    "ui
    syntax on
    set number
    set visualbell
    set relativenumber
    set ruler
    set showcmd
    set showmode
    set cursorline
    set colorcolumn=81
    set list
    set listchars=tab:▸\ ,trail:·,precedes:«,extends:»,eol:↲
    set wildmenu
    set wildmode=list:longest
    set scrolloff=1
    set laststatus=2

    "bracket match
    set showmatch
    nnoremap <Tab> %
    vnoremap <Tab> %

    "whitespace
    set autoindent
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    "searching
    nnoremap / /\v
    vnoremap / /\v
    set ignorecase
    set smartcase
    set gdefault
    set incsearch
    set hlsearch
    nnoremap <Leader><Space> :noh<CR>

    "color
    set background=dark
    colorscheme kolor

"Key remapping
    let mapleader="," " remapping leader key

    command W w
    command Wq wq
    cmap Q q

    nnoremap <Up> <Nop>
    nnoremap <Down> <Nop>
    nnoremap <Left> <Nop>
    nnoremap <Right> <Nop>
    inoremap <Up> <Nop>
    inoremap <Down> <Nop>
    inoremap <Left> <Nop>
    inoremap <Right> <Nop>
    nnoremap j gj
    nnoremap k gk
    nnoremap <silent> <Leader>W :let _sp=@/<Bar>:%s/\s\+$//<BAR>:let @/=_sp<CR>
    nnoremap <leader>v V`]
