# Mnemonic Menu with Which-Key

Spacemacs uses [which-key](https://github.com/justbur/emacs-which-key) to create a menus system of keybindings for the most commonly used commands.

Which-key provides single chord keybindings, `SCP p f` rather than `C-x C-p C-f`.  Single chord key bindings are easier to remember and therefore make Spacemacs simpler to learn and faster to use.  Single chorded key bindings are also less of a strain on hands when typing.

Mnemonic characters for keys are used where possible, using the first character of a command or a prominent character if a particular character is already taken.  Sub-menus are added to increase the range of characters available for a menu.  Spacemacs prefers a sub-menu rather than upper case or non-mnemonic characters.

![Spacemacs Which-Key](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/menus/spacemacs-menu-main.png)


## Which-key menu controls

`C-h` opens the which-key command menu, allowing navigation through menus and sub-menus.

![which-key menu - C-h](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/menus/spacemacs-which-key-paging-help-menu.png)

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
