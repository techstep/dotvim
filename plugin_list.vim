" Include the Vundle bundle
" 
" Add plugins to this file, which will get read by vim
set rtp+=~/.vim/bundle/Vundle.vim
let s:hostname = system("echo -n \"$(hostname)\"")

" since I work on a machine with a version of git not compiled
" for https access, I need to drop back to the git protocol on 
" that machine
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

" Tab completion
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "ervandew/supertab"

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

" cleaning up Vundle
call vundle#end()

