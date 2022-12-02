# Workshop Conventions

## Keybinding conventions

General menu and commands

| Spacemacs           | Major mode            | Normal                 | Insert                 | Command               |
|---------------------|-----------------------|------------------------|------------------------|-----------------------|
| `SPC` - global menu | `,` - major mode menu | Evil (Vim) normal mode | Evil (Vim) insert mode | Name of Emacs command |


Evil (vim-style) states

* normal - manipulating text
* insert - typing in new text
* visual - selecting regions of text
* motion - ?
* lisp - structural editing (smartparens)
* iedit - editing multiple occurrences in a buffer simultaneously
* Evilified - Emacs applications with Evil key bindings
* emacs - Emacs chorded key bindings, i.e. `C-c C-x`, `C-x C-s`, etc.


### Spacemacs - `SPC`

Spacemacs provides a global menu where you can access commands using a mnemonic, text based menu.  Its the recommended starting point for those new to Spacemacs.

Access the global menu via `SPC` in Evil Normal mode or via `M-m` in all other modes


### Major Mode - `,`

Access features specific to the current major mode.

For example when you have a Clojure file or REPL buffer open you can access a Clojure specific menu using `M-RET` in Emacs mode or `,` in Vim normal mode.

Having a major mode specific menu removes the need to use `SPC m` in Vim normal mode or `M-m` in Emacs mode.


### Evil (normal mode)

Vim arranges keybindings across multiple modes, reducing the number of key presses required to carry out commands normal mode specific short-cuts to access Spacemacs features


### Command - `SPC SPC`

Every menu item and keybinding in Spacemacs is calling a function, collectively called commands.

Use commands with `SPC SPC` in Vim normal mode or `M-x` in any mode.

Use a command when there is no menu item or keybinding.

## Classic Emacs Keybindings

The keybindings used in Emacs (holy mode) are also available, many of which start with `C-c` or `C-x`.  If you are familiar with these then its fine to stick with them.  However, if you have trouble learning or remembering them, then switch to the Spacemacs mnemonic alternatives.


## Universal argument

`SPC-u` is the key binding for the Emacs universal argument, `C-u` in Emacs, which is used before other key bindings to modify the function that is called.

For example, `SPC-u , m s` in a Clojure file will start a REPL, but allow for editing of the command line that starts the REPL process
