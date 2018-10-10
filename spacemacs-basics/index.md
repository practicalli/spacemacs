# Spacemacs Basics

Understanding the [Emacs basic concepts and terminology](emacs-basics.html) will help speed your adoption of Spacemacs.

You will gradually discover the power and pleasure of using [Vim and modal editing](vim-basics.html), using different states for specific tasks and reducing your cognitive load (and strain from keybinding combinations).  The [Vim Quick Reference](vim-quick-reference.html) will help you use Spacemacs more effectively.

> ####Hint::Spacemacs for Vim users
> [Migrating from Vim](https://github.com/syl20bnr/spacemacs/blob/master/doc/VIMUSERS.org) article helps Vimmers get up to speed with Spacemacs.

The two most important things to learn about Spacemacs first are the Space menu and the Help system.

## Space bar - main menu

All of the features of Spacemacs are available through the Space bar menu.

Press `SPC` and you get a mnemonic menu to easily navigate through the multitude of functions you can call.

If a function does not have a menu item, you can still find it using `SPC SPC` and start typing its name.  Thanks to the helm completion framework, you will see a list of functions that are a _fuzzy_ match for what you typed.

[![Spacemacs - space menu](/images/spacemacs-main-menu.png)](/images/spacemacs-main-menu.png)


## Spacemacs Help system

Spacemacs has a built in help system to help you find out what functions and keybindings do.


Comprehensive documentation is available on the [Spacemacs website](https://spacemacs.org) and built in to Spacemacs itself, so you can always access it when you are offline.

Every function has a description of how to use it as well as a link to its source code (in case you need more than the description).

Many functions have a keybinding (keyboard short-cut) and you can also get a description of the keybinding.

| Keybinding  | Action                                                                             |
|-------------|------------------------------------------------------------------------------------|
| `SPC h SPC` | helm popup lists Spacemacs documentation and layer guides                          |
| `SPC h d f` | helm popup lists functions and shows the description of the specified function     |
| `SPC h d k` | helm popup lists keybindings and shows the description of the specified keybinding |

Substitute `M-m` for `SPC` in the keybindings if you are only using Emacs holy mode.



> #### Comment::Keybinding guide
> `SPC` means press the spacebar
>
> A character by itself means press that key by itself, eg. `h` means press the <kbd>h</kbd> key
>
> `M-m` means to hold the meta key down and press the <kbd>m</kbd> key
>
> `M-x` means hold the meta key down and press the <kbd>x</kbd> key
>
> The meta key is typically <kbd>Alt</kbd> on Linux/PC, <kbd>Opt</kbd> on MacOSX

------------------------------------------

> ####Hint:: Spacemacs Documentation Online
> The [Spacemacs online documentation](http://spacemacs.org/doc/DOCUMENTATION.html) contains the same information as the built in help system.
>
> The [Spacemacs Quick Start guide](http://spacemacs.org/doc/QUICK_START.html) gives an overview of how to configure Spacemacs.



## Spacemacs in action

If you like to see Spacemacs in action, then you should watch the series of [Spacemacs ABC]() videos on Youtube.  These videos walk you thought the common features of Spacemacs in alphabetical order.

There are also [short screencasts of Spacemacs]() that accompany this book (work in progress).


## Emacs Wiki

Most of the classic documentation about Emacs is also relevant to Spacemacs, after all its Emacs underneath.  Many of the packages used in Spacemacs are also documentation on the Emacs Wiki, so its devinately worth browsing (especially if you are going to customise Spacemacs).
