
"Set colors
syntax on

"set line numbering
set number

"Set autoindent
set ai

"set case-insensitive searching
set ignorecase
set smartcase

"easy editing with mouse, wrap cursor
if has('mouse')
    set mouse=nv
endif
set whichwrap+=<,>,h,l,[,]

"Show the next match while entering a search
set incsearch

"Map <F3> to toggle search result highlighting
nnoremap <F3> :set hlsearch!<CR>

"Backspace problems
set backspace=indent,eol,start

"Display more colors in editor"
set t_Co=256

"Change comments to be a light brown
hi Comment ctermfg=94

"allow for correct pasting from right click
set paste

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=0
set smarttab

"When enabled, the ruler is displayed on the right side of the status line at the bottom of the window. By default, it displays the line number, the column number, the virtual column number, and the relative position of the cursor in the file (as a percentage).
set ruler

"change highlighting colors

highlight Search cterm=bold ctermfg=Red ctermbg=White

"return cursor to last known position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

map <C-A> <Home>
imap <C-A> <Home>
vmap <C-A> <Home>
map <C-E> <End>
imap <C-E> <End>
vmap <C-E> <End>

