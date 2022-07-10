persist.nvim
============

> ⚠️ **WARNING**
> This is a super simple and probably massively over-engineered plugin I have found useful for my own Neovim config.

Persist helps with storing Neovim options and settings persistently upon changing them. Right now, only colorscheme is implemeted via the `Cs` command:

``` vim
:Cs <colorscheme name>
```

Call `Cs` again with no arguments to restore the colorscheme from the last time you called `Cs`. This can be put in your plugin config so that you always have the last selected colorscheme loaded by default.


Installation
------------

Persist can be installed via packer:

``` lua
use { 'smutch/persist.nvim', rocks = 'toml',
       config = function() require "persist.colorscheme".set() end  -- this will load the last selected colorscheme by default
}
```
