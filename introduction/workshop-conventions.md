# Workshop Conventions

## Keybinding conventions

General menu and commands

| Spacemacs           | Major mode            | Normal                 | Insert                 | Command               |
|---------------------|-----------------------|------------------------|------------------------|-----------------------|
| `SPC` - global menu | `,` - major mode menu | Evil (Vim) normal mode | Evil (Vim) insert mode | Name of Emacs command |


Vim Mode specific keybindings

| Normal           | Insert                | Visual             | Motion | Lisp               | Iedit             | Evilified | Emacs                     |
|------------------|-----------------------|--------------------|--------|--------------------|-------------------|-----------|---------------------------|
| The default mode | Mode for writing text | Mode for selection | ?      | Structural Editing | Text manipulation |           | Classic Emacs keybindings |
|                  |                       |                    |        |                    |                   |           |                           |



### Spacemacs - `SPC`

Spacemacs provides a global menu where you can access commands using a mnemonic, text based menu.  Its the recommended starting point for those new to Spacemacs.

Access the global menu via `SPC` in Evil Normal mode or via `M-m` in all other modes

> ####Info
> The use of `SPC`


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
