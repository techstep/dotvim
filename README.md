dotvim
======

Another attempt at a reasonable vim configuration. Previously, I was inspired by 
[Amir Salihefendic's vim file](https://github.com/amix), but decided I wanted an
approach that was easier to maintain.

This time I am using [Vundle](https://github.com/gmarik/Vundle.vim) for package
control.

I am still trying to work out the bugs to get this to work across my three
environments (Arch Linux desktop, Debian Linux remote servers, OS X laptop), and 
as such there are some specific configurations for that.

(*TODO*: Spin off the OS/machine-dependent stuff to a separate file. Also, 
spin off plugins for things that the underlying system doesn't have (for 
example, if a machine doesn't have Clojure, I don't need to install the 
half-dozen or so Clojure packages).)

Needless to say, this is not really suited for general use, but maybe it will
serve as a launchpad for your own configurations..

Installation
------------

Get the repo:

`git clone https://github.com/techstep/dotvim ~/.vim`

Replace that `https://` with `git://` if, for some reason, you have a version
of Git that's not compiled with `https`. (I have a version on a work server that I
can't recompile.)

Make a symlink so that Vim picks up the config file.

`ln -s .vim/vimrc ~/.vimrc`

Currently, the installation requires one to install `Vundle` manually:

`cd ~/.vim && mkdir bundle && git clone [https|git]://github.com/gmarik/Vundle.vim bundle/Vundle.vim`

(I could turn it into a submodule, but that was a headache to deal with in an earlier
instantiation of this configuration.)

Then, run `vim` and type:

`:PluginInstall` or `:VundleInstall`

This will pull down all the packages in the `plugin_list.vim` file.

Updating
--------

Adding new packages is pretty straightforward.

Add the line:

`Plugin "packagename"`

to the listing of packages provided in the file `plugin_list.vim`. Restart 
`vim` to reload the package list, then run `:VundleUpdate` to download and 
install new packages, and update existing ones.

