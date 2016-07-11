dotvim
======

Another attempt at a reasonable vim configuration. Previously, I was inspired by 
[Amir Salihefendic's vim file](https://github.com/amix), but decided I wanted an
approach that was easier for me to maintain.

This time, I've created my own from scratch, using [Vundle](https://github.com/gmarik/Vundle.vim) for package
control.

Becuase I deal with computers in different environments, a good number of plugins depend on 
other things being installed. (For example, I use [Pig](https://pig.apache.org/) at home, but not on my work
machines. Likewise, I use Clojure on some machines, but not others, so on those that don't have it, I don't 
need to install half a dozen Clojure packages.)

Needless to say, this is not really suited for general use, but maybe it will
serve as a launchpad for your own configurations.

Installation
------------

Get the repo:

`git clone https://github.com/techstep/dotvim ~/.vim`

Make a symlink so that Vim picks up the config file.

`ln -s .vim/vimrc ~/.vimrc`

Currently, the installation requires one to install `Vundle` manually:

`cd ~/.vim && mkdir bundle && git clone [https|git]://github.com/gmarik/Vundle.vim bundle/Vundle.vim`

(I could turn it into a submodule, but that was a headache to deal with in an earlier
versuib of this configuration.)

Then, run `vim` and type:

`:PluginInstall` or `:VundleInstall`

This will pull down all the packages in the `plugin_list.vim` file.

Updating
--------

Adding new packages is pretty straightforward.

Add the line:

`Plugin 'packagename'`

to the listing of packages provided in the file `plugin_list.vim`. Restart 
`vim` to reload the package list, then run `:VundleUpdate` to download and 
install new packages, and update existing ones.

