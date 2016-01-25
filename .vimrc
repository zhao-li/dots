set nocompatible            " increase compatability with plugins
syntax enable               " syntax coloring
let NERDTreeShowHidden=1
set clipboard=unnamedplus " need to install vim-gnome to copy to system clipboard

" *** General Settings ***
  set showcmd
  set incsearch                             " highlights letters while they're type in for search
  set ignorecase                            " case insensitive search
  set smartcase                             " respect case if capitalized for search
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set nu ruler                            " forces ruler to be visible (vice toggle)
  set scrolloff=3                          " number of lines above and below cursor
  set clipboard=unnamedplus

  set background=dark

  if has('statusline')
    set laststatus=2            " always show statusline
  endif
" *** End General Settings ***

" *** Map Section ***
  map <leader>d :execute 'NERDTreeFind'<CR>
  let NERDTreeQuitOnOpen = 1
" *** End Map Section ***

" *** Normal mappings ***
  " simplify window navigation with ctrl
    nmap <C-J> <C-W>j
    nmap <C-K> <C-W>k
    nmap <C-L> <C-W>l
    nmap <C-H> <C-W>h
  " simplify tabbed navigation with shift
    nmap <S-H> gT
    nmap <S-L> gt
" *** End Normal mappings ***

" Tell vim to remember certain things when we exit
  set viminfo='10,\"100,:20,%,n~/.viminfo
  "            |    |    |  | |
  "            marks will be remembered for up to 10 previously edited files
  "                 |    |  | |
  "                 save up to 100 lines for each register
  "                      |  | |
  "                      20 lines of command-line history will be remembered
  "                         | |
  "                         saves and restores the buffer list
  "                           |
  "                           where to save the viminfo files
