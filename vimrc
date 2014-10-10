" quicksave
nmap <leader>w :w!<cr>

" Rob Jefferson <techstep@gmail.com>

" Make vim work like vim, and not vi
set nocompatible

" Turning off filetype detection for now
filetype off

" I like syntax highlighting
syntax enable

" Include the Vundle bundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" File management
Plugin 'scrooloose/nerdtree'

" Status line
Plugin 'bling/vim-airline'

" Parentheses/brackets galore
Plugin 'Raimondi/delimitMate'
Plugin 'luochen1990/rainbow'

" Searching
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'

" VCS commands
Plugin 'vcscommand.vim'

" Language syntax bundles
Plugin 'vim-perl/vim-perl'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'klen/python-mode'


" Tab completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'


" cleaning up Vundle
call vundle#end()
filetype plugin indent on

" Backspace should go to the previous line etc.
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

" Tab completion
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <cr> <C-r>=<SID>my_cr_function()<cr>

function! s:my_cr_function()
    return neocomplete#close_popup()."\<cr>"
endfunction

" reset the leader to a more easily-accessible character (thanks to amix)
let mapleader=","
let g:mapleader=","

" spaces instead of tabs (4 spaces to the putative tab)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" quicksave
nmap <leader>w :w!<cr>

" set NERDTree to ,p
nmap <leader>p :NERDTree<cr>

" I like my searches case insensitive, thanks
set ignorecase

" I want to manipulate tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
