" vimrc 0.2
" Rob Jefferson <techstep@gmail.com>

" We're using vim here, and aren't too crazy about vi compatibility
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

" VCS commands
Plugin 'vcscommand.vim'

" Language syntax bundles
Plugin 'vim-perl/vim-perl'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'



" cleaning up Vundle
call vundle#end()
filetype plugin indent on

" Mucking around with colors
set t_Co=256
set background=dark

" I kind of like mouse compatibility with vim. YMMV.
set mouse=a
