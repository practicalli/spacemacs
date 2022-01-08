# Spacemacs Basics
Understanding the [Emacs basic concepts and terminology](emacs-basics.md) will help speed your adoption of Spacemacs.

You will gradually discover the power and pleasure of using [Vim and modal editing](vim-basics.md), using different states for specific tasks and reducing your cognitive load (and strain from keybinding combinations).  The [Vim Quick Reference](/spacemacs-basics/vim-style/vim-quick-reference.md) will help you use Spacemacs more effectively.

> ####Hint::Spacemacs for Vim users
> [Migrating from Vim](https://github.com/syl20bnr/spacemacs/blob/develop/doc/VIMUSERS.org) article to help those with Vim experience to get up to speed with Spacemacs.

The two most important things to learn about Spacemacs first are the Space menu, `SPC`, and the Help system, `SPC h`.

## Space bar - main menu
All of the commands in Spacemacs are available through the Space bar menu.

`SPC` displays a mnemonic menu (`which-key`) to easily navigate through the multitude of functions you can call.

`SPC SPC` displays a popup listing all Spacemacs commands, typing will start narrowing the list of commands using fuzzy logic, helping you find the right command quickly. This is equivalent to `M-x` in Emacs.

[![Spacemacs - space menu](/images/spacemacs-main-menu.png)](/images/spacemacs-main-menu.png)

> ####Hint::Holy mode (Emacs) style editing
> `M-m` is the equivalent of `SPC` in Evil (Vim) style editing
>
> `M-RET` opens the major mode menu (e.g. Clojure specific menu in clojure-mode), the equivalent of `,` in Evil.

## Spacemacs Help system
Spacemacs has a built in help system to help you find out what layers, commands and keybindings do.

Every function has a description of how to use it as well as a link to its source code (in case you need more than the description).

Many functions have a keybinding (keyboard short-cut) and you can also get a description of the keybinding.

| Keybinding  | Action                                             |
|-------------|----------------------------------------------------|
| `SPC h SPC` | Spacemacs documentation and layer guides           |
| `SPC h d f` | functions and description of selected function     |
| `SPC h d k` | keybindings and description of selected keybinding |

Online help

* [Spacemacs online documentation](https://develop.spacemacs.org/doc/DOCUMENTATION.html)
* [Spacemacs key bindings](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#key-bindings)
* [Spacemacs Quick Start guide](https://develop.spacemacs.org/doc/QUICK_START.html)
* [Spacemacs Layers](https://develop.spacemacs.org/layers/LAYERS.html)
* [Practicalli Spacemacs YouTube playlist](https://www.youtube.com/playlist?list=PLpr9V-R8ZxiCHMl2_dn1Fovcd34Oz45su)
* [Spacemacs ABC](https://www.youtube.com/playlist?list=PLrJ2YN5y27KLhd3yNs2dR8_inqtEiEweE) video walk-through of features (a little dated now).

> #### Comment::Keybinding guide
> `SPC` means press the space bar
>
> A character by itself means press that key by itself, eg. `h` means press the <kbd>h</kbd> key
>
> `M-m` means to hold the meta key down and press the <kbd>m</kbd> key
>
> The meta key is usually <kbd>Alt</kbd> on Linux/PC, <kbd>Opt</kbd> on MacOSX
