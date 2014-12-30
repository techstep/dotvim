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

" Unicode glyphs
Plugin 'chrisbra/unicode.vim'

" Searching
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'

" VCS commands
Plugin 'vcscommand.vim'
Plugin 'tpope/vim-fugitive'

" Language syntax 
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
Plugin 'lukerandall/haskellmode-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'dag/vim-fish'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'chase/vim-ansible-yaml'

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" IDE-ish things
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/mru.vim'
Plugin 'terryma/vim-multiple-cursors'


" Tab completion
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "ervandew/supertab"

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/landscape.vim'

" cleaning up Vundle
call vundle#end()

