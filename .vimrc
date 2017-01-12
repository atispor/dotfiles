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
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" CtrlP
" --------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden=1

" Syntastic
" ---------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


set exrc
set secure
