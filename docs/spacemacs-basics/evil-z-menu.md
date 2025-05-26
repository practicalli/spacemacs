# Evil Z menu

`z` in normal mode opens a menu of convenient utilities

![Spacemacs Vim Normal - zoom menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-vim-normal-z-menu.png?raw=true)


## Folding code, comments and other content

Code folding is very useful for hiding different levels of detail, for example you could hide everything but the function names in a namespace, showing just the API for that namespace.

Comments and documentation can be folded to help you focus on a specific part of the content.

| Keybinding | Description                                 |
|------------|---------------------------------------------|
| `z a`      | toggle fold of code, comment, section, etc. |
| `z c`      | close fold                                  |
| `z o`      | open fold                                   |
| `z O`      | open fold recursive (capital o)             |
| `z r`      | open folds                                  |

See [:fontawesome-solid-book-open: narrowing](/spacemacs/spacemacs-basics/evil-tools/narrowing.md) for a focused approach to editing.


## Scrolling

Jump the current line to the center, top or bottom of the buffer. Evil equivalents of the Emacs `C-l` key bindings.

| Keybinding | Description                                 |
|------------|---------------------------------------------|
| `z b`      | scroll the current line to bottom of buffer |
| `z t`      | scroll the current line to top of buffer    |
| `z z`      | scroll the current line to center of buffer |
| `z ^`      | scroll top line to bottom                   |
| `z +`      | scroll bottom line to top                   |
