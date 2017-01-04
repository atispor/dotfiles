" Pathogen

call pathogen#infect()

" General

set nocompatible
set ruler

set backspace=indent,eol,start

filetype plugin on

" Syntax

syntax on

set showmatch

" Indentation

set autoindent

" Search

set incsearch
set hlsearch

" Colors

let vimrc_colors = "$HOME/.vimrc.colors"

if filereadable(expand(vimrc_colors))
    exec "source ".vimrc_colors
endif

" External

let vimrc_host = "$HOME/.vimrc.host"

if filereadable(expand(vimrc_host))
    exec "source ".vimrc_host
endif

" NERDTree
" --------
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
" --------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Syntastic
" ---------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set exrc
set secure
