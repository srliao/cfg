"basic settings

filetype plugin indent on
syntax on
set encoding=utf-8
set visualbell noerrorbells "no beeping
set hlsearch incsearch
set nowrap "no line wrap
set nu ruler "line numbers
set nobackup noswapfile "no backup and swaps
set ignorecase smartcase "search options
set foldmethod=syntax "folding 
set foldlevel=1 "default fold level
set nospell "no spell check
set ttyfast "scroll faster
set showmode "show what mode we're in
set showcmd "show cmd?
set tabstop=2 shiftwidth=2 expandtab "default tab with, 2 because we're on small screen
set smarttab expandtab "auto insert blanks and expand tabs to space
set so=7 "lines before cursor
set backspace=indent,eol,start "backspace behaviour
set autoread "reload if file changed
set history=500 "command line history
set autochdir "set working directory to current file
set cmdheight=2 "cmd line height
set whichwrap+=<,>,h,l "cursor automatically wrap left and right
set lazyredraw "reduce update frequency
"change file completion
set wildmode=longest,list,full
set wildmenu
let mapleader = "," "leader

"map esc to 
inoremap jk <Esc> 
"use ; for commands
nnoremap ; :
"insert blank lines
map <Enter> o<ESC>
map <S-Enter> O<ESC>
"space to toggle folds
nnoremap <Space> za
vnoremap <Space> za
"unfold all
nmap <leader><Space> zR
"hide highlight of searches
nmap <silent> // :nohlsearch<CR>
"reload vimrc
nmap <silent> <leader>rv :source ~/.vimrc<CR>
"shift +H/L to navigate tabs
nnoremap H gT
nnoremap L gt
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

"nerdtree
:nnoremap <C-n> :NERDTreeToggle<CR>

"go specific
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
au BufReadPost *.gotmpl set syntax=gotexttmpl

"vue specific
let g:vue_pre_processors = []
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"paste mode
set pastetoggle=<F2>
