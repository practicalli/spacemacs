# Workshop Conventions

## Keybinding conventions

Spacemacs provides a global menu where you can access all the features using a mnemonic, text based menu.  Its the recommended starting point for those new to Spacemacs.

| Spacemacs           | Emacs            | Major mode               | Evil                         | Command               | Description            |
|---------------------|------------------|--------------------------|------------------------------|-----------------------|------------------------|
| Spacemacs main menu | Emacs keybinding | Major mode specific menu | Emacs normal mode keybinding | Name of Emacs command | Description of command |

### Spacemacs

Access the global menu from Vim normal mode, via `SPC`

### Emacs (any mode)

Access the global menu as with the Spacemacs bindings, available in any mode via `M-m`

### Major Mode

Access features specific to the current major mode.  

For example when you have a Clojure file or REPL buffer open you can access a Clojure specific menu using `M-RET` in Emacs mode or `,` in Vim normal mode.

Having a major mode specific menu removes the need to use `SPC m` in Vim normal mode or `M-m` in Emacs mode.

### Evil (normal mode)

Vim normal mode specific short-cuts to access Spacemacs features

### Command

The name of the command.

Use this approach there is no menu item or if you want to know what command a keybinding calls.

Use commands with `SPC SPC` in Vim normal mode or `M-x` in any mode.
