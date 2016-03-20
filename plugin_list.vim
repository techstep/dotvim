" Include the Vundle bundle
" 
" Add plugins to this file, which will get read by vim
set rtp+=~/.vim/bundle/Vundle.vim
let s:hostname = system("echo -n \"$(hostname)\"")

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
if executable("ag")
    Plugin 'rking/ag.vim'
endif

if executable("ack")
    Plugin 'mileszs/ack.vim'
endif

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

if executable("alda")
    Plugin 'daveyarwood/vim-alda'
endif

if executable("julia")
    Plugin 'JuliaLang/julia-vim'
endif

Plugin 'kchmck/vim-coffee-script'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'moll/vim-node'
Plugin 'groenewege/vim-less'

if executable("ghci")
    Plugin 'lukerandall/haskellmode-vim'
endif

if executable("scalac")
    Plugin 'derekwyatt/vim-scala'
endif

Plugin 'dag/vim-fish'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'gisraptor/vim-lilypond-integrator'
Plugin 'Glench/Vim-Jinja2-Syntax'

if executable("pig")
    Plugin 'motus/pig.vim'
endif

if executable("swift")
    Plugin 'keith/swift.vim'
endif

if executable('idris')
    Plugin 'idris-hackers/idris-vim'
endif

Plugin 'rgrinberg/vim-ocaml'
Plugin 'fatih/vim-go'

if executable('haxe')
    Plugin 'jdonaldson/vaxe'
endif
Plugin 'netdata/vim-puppet'

if executable("ponyc")
    Plugin 'dleonard0/pony-vim-syntax'
endif

" Clojure
if executable("lein")
    Plugin 'guns/vim-clojure-static'
    Plugin 'tpope/vim-fireplace'
    Plugin 'guns/vim-clojure-highlight'
    Plugin 'tpope/vim-classpath'
    Plugin 'tpope/vim-sexp-mappings-for-regular-people'
    Plugin 'guns/vim-sexp'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
endif

" IDE-ish things
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/mru.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'wesQ3/vim-windowswap'

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

