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
let s:hostname = system("echo -n \"$(hostname)\"")

" since I work on a machine with a version of git not compiled
" for https access, I need to drop back to git on that machine
if s:hostname == "cherry"
    let g:vundle_default_git_proto='git'
endif

call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" File management
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Status line
Plugin 'bling/vim-airline'

" Parentheses/brackets galore
Plugin 'Raimondi/delimitMate'
Plugin 'luochen1990/rainbow'

" Searching
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'

" VCS commands
Plugin 'vcscommand.vim'
Plugin 'tpope/vim-fugitive'

" Language syntax bundle_hooks  
Plugin 'vim-perl/vim-perl'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'moll/vim-node'
Plugin 'groenewege/vim-less'


" IDE-ish things
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/mru.vim'
Plugin 'rizzatti/dash.vim'

" Tab completion
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

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
let g:airline#extensions#tabline#enabled=1

" Tab completion, using neocomplete on systems with lua
if has("lua") == 1
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
endif

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

" set NERDTree to ,p and toggling to ,n
nmap <leader>p :NERDTree<cr>
nmap <leader>n :NERDTreeTabsToggle<CR>

" I like my searches case insensitive, thanks
set ignorecase

" split to the right and to the bottom, rather than to the usual left-and-top.
set splitbelow
set splitright

" navigate between the splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-H>

" fencepost (```) syntax highlight for github-flavored markdown
let g:markdown_fenced_languages=['css', 'javascript', 'json=javascript', 'perl', 'xml']

" I want to manipulate tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
