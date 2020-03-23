# Mnemonic Menu with Which-Key
Spacemacs uses [which-key](https://github.com/justbur/emacs-which-key) to create a menus system of keybindings for the most commonly used commands.

Single chord keybindings are preferred, e.g. `SCP p f` rather than `C-x C-p C-f`, which are easier to remember and less of a strain to type. fs

Mnemonic characters for keys are used where possible, aiding memorability of keybindings.

[![Spacemacs Which-Key](/images/spacemacs-main-menu.png)](/images/spacemacs-main-menu.png)


## Which-key menu controls
`C-h` opens the which-key command menu, allowing navigation through menus and sub-menus.

![which-key menu - C-h](/images/spacemacs-which-key-paging-help-menu.png)

`C-h n` shows the next page of commands when a menu is so large it is be spanned over several pages. `C-h p` shows the previous menu page.

`C-h u` to show the parent of the current menu, useful if you navigated to an incorrect sub-menu.

| Keybinding | Description           |
|------------|-----------------------|
| `C-h`      | Paging / help menu    |
| `n`        | next page in menu     |
| `p`        | previous page in menu |
| `u`        | up to parent menu     |
| `h`        | help                  |
| `a`        | abort                 |
