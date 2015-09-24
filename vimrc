" vimrc 0.4
" Rob Jefferson <techstep@gmail.com>
"
" Designed to help me get work done

" Because I use fish, and it's not POSIX-compatible,
" I need to run bash instead or else vundle throws
" myriad errors

if $SHELL=~'bin/fish'
    set shell=/bin/bash
endif

" Make vim work like vim, and not vi
set nocompatible

" I like syntax highlighting
syntax enable

" Turning off filetype detection for now
filetype off

source ~/.vim/plugin_list.vim

" Turning it back on after the plugins are loaded
filetype plugin indent on

" Backspace should go to the previous line, etc.
set backspace=indent,eol,start

" Mucking around with colors
set t_Co=256
set background=dark

" I kind of like mouse compatibility with vim. YMMV.
set mouse=a

" Turning things on
let g:rainbow_active=1
let g:airline_powerline_fonts=1
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:htmljinja_disable_detection=0

" character encodings
set encoding=utf-8
set fileencoding=utf-8

" increase the history from 20 (default)
set history=1000

" reset the leader to a more easily-accessible character (thanks to 
" amix for the suggestion of using the comma)
let mapleader=","
let g:mapleader=","

" Highlight the cursor line -- makes it harder to get lost on a crowded scree
" set cursorline

" spaces instead of tabs (4 spaces to the tab)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" quicksave
nmap <leader>w :w!<cr>

" set NERDTree to ,p and toggling in tabs to ,n
nmap <leader>p :NERDTree<cr>
nmap <leader>n :NERDTreeTabsToggle<CR>

" I like my searches case insensitive, thanks
set ignorecase

" split to the right and to the bottom, rather than to the usual left-and-top.
set splitbelow
set splitright

" make searching update as I type, and highlight the results
set incsearch
set hlsearch

" navigate between the splits easier
" helper functions for wrapping between split panes
" (cf. http://bit.ly/1wjRwBl)
function! s:GotoNextWindow(direction, count)
    let l:prevWinNr = winnr()
    execute a:count . 'wincmd' a:direction
    return winnr() != l:prevWinNr
endfunction

function! s:JumpWithWrap(direction, opposite)
    if ! s:GotoNextWindow(a:direction, v:count1)
        call s:GotoNextWindow(a:opposite, 999)
    endif
endfunction

nnoremap <C-H> :<C-u>call <SID>JumpWithWrap('h', 'l')<CR>
nnoremap <C-J> :<C-u>call <SID>JumpWithWrap('j', 'k')<CR>
nnoremap <C-K> :<C-u>call <SID>JumpWithWrap('k', 'j')<CR>
nnoremap <C-L> :<C-u>call <SID>JumpWithWrap('l', 'h')<CR>

" fencepost (```) syntax highlight for github-flavored markdown
let g:markdown_fenced_languages=['css', 'javascript', 'json=javascript', 'perl', 'xml']

let g:used_javascript_libs='underscore,backbone,jquery'

" folding active by default is annoying
let g:pymode_folding=0
set foldlevelstart=99

" Sometimes I work in Fortran; I want consistent highlighitng when I'm using
" freeform F90/F95 source

let fortran_free_source=1

" I want to manipulate tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
