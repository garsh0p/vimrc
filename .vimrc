set nocompatible

"Vundle stuff
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ctrlp.vim'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/dantler/vim-alternate.git'
Bundle 'taglist.vim'
Bundle 'surround.vim'

filetype plugin on
filetype plugin indent on

"Vim options
set bg=dark
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
set incsearch
set expandtab
set smarttab
set nu
"#set textwidth=80
set backspace=2
set hlsearch
set nobackup
set noswapfile
set linebreak
"match ErrorMsg '\%>80v.\+'
syntax on
set showbreak=↪
set wildmenu
set wildmode=list:longest,full
set ignorecase
set smartcase
set wrap

"""Vim hotkeys

"Disable Ex mode hotkey
nnoremap Q <nop>

"Use \/ to clear search highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>

"File types to ignore
set wildignore+=*.png,*.jpg,*.gif,*.tar.gz,*.tgz,*.zip,*.wav,*.mp3,*.class,*/target/*,*.pyc

map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>
map <F4> :A<CR>
map <F5> :!ctags -R<CR>
map <F12> :! p4 edit %<CR>
map <Leader><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
