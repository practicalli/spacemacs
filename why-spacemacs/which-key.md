# Discoverable commands with Which-Key

![Spacemacs Which-Key](/images/spacemacs-home-which-key.png)

The more features you add to Emacs, the more keybindings and commands you have at your fingertips.  To manage all this power, Spacemacs uses [which-key](https://github.com/justbur/emacs-which-key) to organise these keybindings and commands into groups.


Commands are grouped by their nemonic character, for example

| Which-key nemonic menu        |                              |
|-------------------------------|------------------------------|
| `a` - applications            | `N` - navigation             |
| `B` - global buffers          | `n` - narrow/numbers         |
| `b` - buffers                 | `p` - projects               |
| `C` - capture/colors          | `q` - quit                   |
| `c` - compile/comments        | `r` - registers/rings/resume |
| `e` - errors                  | `s` - search/symbol          |
| `f` - files                   | `S` - spelling               |
| `g` - git/version control     | `T` - UI toggles/themes      |
| `h` - help                    | `t` - toggles                |
| `i` - insertion               | `w` - windows                |
| `j` - jump/join/split         | `x` - text                   |
| `k` - lisp                    | `z` - zoom                   |
| `l` - layouts-transient-state |                              |


You can still use all the keybindings that come with Emacs packages as well as type in command names using `M-x command-name` too, or `SPC SPC command-name`, if you know the the command-name you are looking for.

## Navigating which-key menus

| Spacemacs | Emacs | Description |
|-----------|-------|-------------|
| `SPC`     | `M-m` | main menu   |


## Which-key menu paging / help

You can navigate around the which-key menu system using commands under `C-h`.  This allows you to go back to a parent menu if you selected the wrong sub-menu.

Depending on the number of items on a particular menu and the size of your Spacemacs frame, the menu may be spanned over several pages of menu.  So pressing `C-h n` will take you to the next page of the menu, while `C-h p` will take you to the previous menu page.

![which-key menu - C-h](/images/spacemacs-which-key-paging-help.png)

| Command | Description           |
|---------|-----------------------|
| `C-h`   | Paging / help menu    |
| `n`     | next page in menu     |
| `p`     | previous page in menu |
| `u`     | up to parent menu     |
| `h`     | help                  |
| `a`     | abort                 |

![which-key menu - C-h](/images/spacemacs-which-key-paging-help-menu.png)
