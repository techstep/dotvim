" vimrc 0.2
" Rob Jefferson <techstep@gmail.com>
"
" Designed to help me get work done

" Make vim work like vim, and not vi
set nocompatible

" Turning off filetype detection for now
filetype off

" I like syntax highlighting
syntax enable

source ~/.vim/plugin_list.vim

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

" Tab completion, using neocomplete on systems
" where vim has lua support compiled (again, this
" isn't the case on some of the dev systems I work with)

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

" make searching update as I type, and highlight the results
set incsearch
set hlsearch

" navigate between the splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-H>

" fencepost (```) syntax highlight for github-flavored markdown
let g:markdown_fenced_languages=['css', 'javascript', 'json=javascript', 'perl', 'xml']

let g:used_javascript_libs='underscore,backbone,jquery'

" I want to manipulate tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
