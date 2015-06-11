"wget 'https://docs.google.com/uc?export=download&id=0BwElxGVvMyfITmtfUnBuSWZ5UUU' -O .vimrc2

"set line numbering
set number

"Set autoindent
set ai

"set case-insensitive searching
set ignorecase
set smartcase

"easy editing with mouse, wrap cursor
set mouse=nv
set whichwrap+=<,>,h,l,[,]

"Show the next match while entering a search
set incsearch

"When enabled, the ruler is displayed on the right side of the status line at the bottom of the window. By default, it displays the line number, the column number, the virtual column number, and the relative position of the cursor in the file (as a percentage).
set ruler

"Map <F3> to toggle search result highlighting
nnoremap <F3> :set hlsearch!<CR>

