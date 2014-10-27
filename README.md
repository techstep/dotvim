dotvim
======

Another attempt at a reasonable vim configuration. Previously, I was inspired by 
[Amir Salihefendic's vim file](https://github.com/amix), but decided I wanted an
approach that was easier to maintain.

This time I am using [Vundle](https://github.com/gmarik/Vundle.vim) for package
control.

I am still trying to work out the bugs to get this to work across my three
environments (Linux desktop, Linux remote servers, OS X laptop).

Needless to say, this is not really suited for general use, but maybe it will
serve as a launchpad for your work.

Installation
------------

`git clone https://github.com/techstep/dotvim ~/.vim`

Replate that `https://` with `git://` if, for some reason, you have a version
of Git that's not compiled with `https`. (I have a version.)

`ln -s .vim/vimrc ~/.vimrc`

Currently, the installation requires one to install `Vundle` manually:

`cd ~/.vim && mkdir bundle && git clone [https|git]://github.com/gmarik/Vundle.vim`

Then, run `vim` and type:

`:PluginInstall` or `:VundleInstall`

Updating
--------

Adding new packages is pretty straightforward:

Add the line:

`Plugin "packagename"`

to the listing of packages provided in the file `plugin_list.vim`, then run `:VundleUpdate`
download and install the packages, and update existing ones.

