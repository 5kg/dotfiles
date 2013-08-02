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
    Bundle "scrooloose/syntastic"
    Bundle "ciaranm/detectindent"
    Bundle "rking/ag.vim"
    Bundle "Lokaltog/vim-easymotion"
    Bundle "scrooloose/nerdtree"

" General settings
    set encoding=utf-8
    set ttyfast
    set spell
    set backspace=indent,eol,start
    set mouse=a
    set undofile
    set hidden
    set formatoptions=qrnj1
    au FocusLost * :wa
    filetype plugin on
    filetype indent on

    "ui
    syntax on
    set number
    set visualbell
    set relativenumber
    set ruler
    set showcmd
    set showmode
    set cursorline
    set colorcolumn=80
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
    set smarttab
    autocmd BufReadPost * :DetectIndent

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
    let mapleader=","

    nnoremap ; :

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

    nnoremap <Leader>w <C-w>v<C-w>l
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    map <Leader>t :NERDTreeToggle<CR>
