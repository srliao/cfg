filetype plugin indent on
syntax on
set visualbell

set undofile " Maintain undo history between sessions

set backspace=indent,eol,start
set autoread
set history=500

set autochdir

set so=7
set ruler
set cmdheight=2
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai
set si
set wrap
set number

"set foldmethod=indent

inoremap jk <Esc>
"inoremap kj <Esc>

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

:nnoremap <C-n> :NERDTreeToggle<CR>

au BufReadPost *.gotmpl set syntax=gotexttmpl

let g:vue_pre_processors = []

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"set rtp+=~/tabnine-vim

"paste mode
set pastetoggle=<F2>
