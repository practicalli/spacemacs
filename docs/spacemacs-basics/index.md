# Spacemacs Basics

++spc++ opens the Which-key menu providing access to all Spacemacs commands via a mnemonic menu system

![Spacemacs Whichkey SPC menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-whichkey-spc-menu-light.png#only-light)
![Spacemacs Whichkey SPC menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-whichkey-spc-menu-dark.png#only-dark)


++comma++ a context specific menu for the current major mode, i.e. With a Clojure file in the current buffer a Clojure specific menu is displayed

![Spacemacs Whichkey major mode menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-whichkey-clojure-major-mode-menu-light.png#only-light)
![Spacemacs Whichkey major mode menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-whichkey-clojure-major-mode-menu-dark.png#only-dark)


!!! INFO "Key combination guide"
    ++spc++ means press the space bar and release

    A character by itself means press that key by itself, eg. `h` means press the <kbd>h</kbd> key

    ++meta+"m"++  `M-m` means to hold the ++meta++ key down and press the ++"m"++ key

    The ++meta++  key is typically ++"Alt"++ on Linux/PC, ++"Opt"++ on MacOSX


??? HINT "Holy mode (Emacs) Essential Key bindings"
    ++meta++ ++"m"++ in Holy mode is the equivalent of ++spc++ in Evil (Vim) style editing

    ++meta++ ++return++ opens the major mode menu (e.g. Clojure specific menu in clojure-mode), the equivalent of ++comma++ in Evil.


## Evil for Multi-modal editing

Gradually discover the power and pleasure of using [Vim and modal editing](evil/), using [different editing states for specific tasks](evil/editing-states/) and reducing your cognitive load and strain from key combinations.  The [Vim Quick Reference](vim-style/vim-quick-reference/) will help you use Spacemacs more effectively.

[Migrating from Vim](https://github.com/syl20bnr/spacemacs/blob/develop/doc/VIMUSERS.org){target=_blank} article to help those with Vim experience to get up to speed with Spacemacs.


## Space key

All of the commands in Spacemacs are available through the Space bar menu.

++spc++ displays a mnemonic menu (`which-key`) to easily navigate through the multitude of functions you can call.

++spc++ ++spc++ displays a popup listing all Spacemacs commands, typing will start narrowing the list of commands using fuzzy logic, helping you find the right command quickly. This is equivalent to ++meta++ ++"x"++ in Emacs.


## Spacemacs Help system

++spc++ ++"h"++ is the help menu to access all Spacemacs documenting and any information about Emacs itself, an important menu to support learning Spacemacs

Spacemacs has a built in help system to help you find out what layers, commands and keybindings do.

Every function has a description of how to use it as well as a link to its source code (in case you need more than the description).

Many functions have a keybinding (keyboard short-cut) and you can also get a description of the keybinding.

| Keybinding                      | Action                                             |
|---------------------------------|----------------------------------------------------|
| ++spc++ ++"h"++ ++spc++         | Spacemacs documentation and layer guides           |
| ++spc++ ++"h"++ ++"d"++ ++"f"++ | functions and description of selected function     |
| ++spc++ ++"h"++ ++"d"++ ++"k"++ | keybindings and description of selected keybinding |


## Online help

* [Spacemacs online documentation](https://develop.spacemacs.org/doc/DOCUMENTATION.html){target=_blank}
* [Spacemacs key bindings](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#key-bindings){target=_blank}
* [Spacemacs Quick Start guide](https://develop.spacemacs.org/doc/QUICK_START.html){target=_blank}
* [Spacemacs Layers](https://develop.spacemacs.org/layers/LAYERS.html){target=_blank}
* [Practicalli Spacemacs YouTube playlist](https://www.youtube.com/playlist?list=PLpr9V-R8ZxiCHMl2_dn1Fovcd34Oz45su){target=_blank}
* [Spacemacs ABC](https://www.youtube.com/playlist?list=PLrJ2YN5y27KLhd3yNs2dR8_inqtEiEweE){target=_blank} video walk-through of features (a little dated but still mostly relevant).
