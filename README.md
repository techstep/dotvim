dotvim
======

Another attempt at a reasonable vim configuration.

This time I am using [Vundle](https://github.com/gmarik/Vundle.vim) for package
control.

I am still trying to work out the instructions to get this to work across my three
environments.

Adding new packages is pretty straightforward:

Add the line:

`Plugin "packagename"`

to the listing of packages provided in the `vimrc`, then run `:PluginInstall` in 
`vim` to download and install the packages.


