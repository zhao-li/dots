" This file configures VI(M)

syntax enable " syntax coloring

set autoindent                 " start new line at proper indentation
set backspace=indent,eol,start " allows deleting past start location in edit mode: https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backupdir=~/.vim/backup/   " place backup files under home folder
set clipboard=unnamed          " allow copying to system clipboard
set directory=~/.vim/swp/      " place swap files under home folder
set expandtab                  " expand tabs to spaces
set ignorecase                 " case insensitive search
set incsearch                  " highlights letters while they're type in for search
set laststatus=2               " 2 means always show statusline: https://stackoverflow.com/a/21069262
set nu ruler                   " forces ruler to be visible (vice toggle)
set scrolloff=2                " number of lines above and below cursor
set softtabstop=2              " allows deleting multiple spaces at a time
set smartcase                  " respect case if capitalized for search
set shiftwidth=2               " keep tabs to 2 spaces

set statusline+=%h                 " help flag, e.g. [help]
set statusline+=%r                 " read-only flag, e.g. [RO]
set statusline+=%F                 " filename and path
set statusline+=%m                 " modifed flag, e.g. [+]
set statusline+=%=                 " section separator
set statusline+=Col:\ %c           " column info
set statusline+=,\                 " comma and space separator
set statusline+=Line:\ %l/%L\ %p%% " line info
