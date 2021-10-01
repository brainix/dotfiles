"----------------------------------------------------------------------------"
"   .vimrc                                                                   "
"----------------------------------------------------------------------------"



" Save our left pinkies!  In Normal mode, map the semicolon to the colon (to
" switch to Command-line mode).  This prevents us from having to press the
" left shift key to type a colon.
nmap ; :

" Map Ctrl + h, j, k, and l to navigate left, down, up, and right between
" splits, respectively.
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>



" Don't clutter our filesystems!  Keep all backup and swap files in one place.
" These directories must exist - Vim does not create them for us.
set backupdir=~/.vim/backup
set directory=~/.vim/tmp



" When a file is changed outside of Vim but hasn't been changed inside of Vim,
" automatically read the file again.
set autoread



" Enable file type detection, load the plugins for specific file types, and
" load the indent files for specific file types.
filetype on
filetype plugin on
filetype indent on



" Configure sane tab behavior...
set expandtab

set shiftwidth=4
set softtabstop=4
set tabstop=4

set smarttab
set autoindent



" Override tab behavior based on file type.
" To see a list of known filetypes, issue this command in Vim:
"   :echo getcompletion('', 'filetype')
autocmd FileType javascript,css,html,json setlocal shiftwidth=2
autocmd FileType javascript,css,html,json setlocal softtabstop=2
autocmd FileType javascript,css,html,json setlocal tabstop=2

autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal shiftwidth=8
autocmd FileType go setlocal softtabstop=8
autocmd FileType go setlocal tabstop=8



" Allow backspacing over autoindents, line breaks, and the starts of inserts.
set backspace=indent,eol,start



" Whenever we save our ~/.vimrc files, automatically reload our configuration
" changes.
autocmd BufWritePost ~/.vimrc source ~/.vimrc



" Redraw the screen only when we need (and not, e.g., in the middle of
" macro execution).
set lazyredraw

" We're on a fast terminal connection, so send more characters for smoother
" redrawing.
set ttyfast

set background=dark
colorscheme elflord
set ruler
syntax on
set nowrap



" Disable annoying beeps and flashes.
set noerrorbells visualbell t_vb=
