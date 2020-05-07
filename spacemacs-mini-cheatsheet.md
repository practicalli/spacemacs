# Spacemacs Mini Cheatsheet

`Ctrl-g` two times will cancel most actions in Spacemacs

**Spacemacs Holy Mode**: use `M-m` instead of `SPC` and `M-RET` instead of `,` in the keybindings below

## Clojure

| keybinding | action                                     |
|------------|--------------------------------------------|
| `, '`      | start the REPL                             |
| `, e f`    | evaluate a function                        |
| `, e ;`    | evaluate a function, add result as comment |
| `, m b`    | show running REPL's (browse) |
| `, t a`    | run all tests (use in test namespace)       |


## Working with projects

| keybinding   | action                               |
|--------------|--------------------------------------|
| `SPC f f`    | find file                            |
| `SPC p f`    | project specific find file           |
| `SPC p a`    | toggle between source and test files |
| `SPC TAB`    | switch to previous buffer            |
| `SPC s s`    | swoop search in project              |
| `SPC b b`    | List current buffers                 |
| `SPC b d`    | Kill current buffer                  |
| `SPC number` | Jump to window number                |

## Using Vim

| keybinding | action                                       |
|------------|----------------------------------------------|
| `j`        | move cursor down one line                    |
| `k`        | move cursor up one line                      |
| `l`        | move cursor right one character              |
| `h`        | move cursor left one character               |
| `*`        | to next matching symbol name                 |
| `$`        | end of current line                          |
| `0`        | start of current line                        |
| `%`        | jump to matching parens or next closed paren |
| `gg`       | start of buffer                              |
| `G`        | end of buffer                                |
| `v`        | visual select                                |
| `y`        | yank - copy selected text                    |
| `y y`      | yank line - copy entire line                 |
| `/`        | search forwards in current buffer            |

### Changing Text

| Command  | Action                                          |
| ---      | ---                                             |
| `i`      | insert - edit at cursor                         |
| `a`      | append - edit after cursor                      |
| `o`      | new line after cursor                           |
| `O`      | new line before cursor                          |
| `ESC`    | return to normal mode                           |
| `x`      | delete character and add to kill ring           |
| `p`      | paste (put)                                     |
| `u`      | undo                                            |
| `Ctrl-r` | redo                                            |
| `g c c`  | comment current line                            |
| `D`     | delete to end of line                           |
| `dd`     | delete the current line                         |
| `dt`     | delete to a character (not including character) |

## Quit / restart

| keybinding | action                                       |
|------------|----------------------------------------------|
| `SPC q q` | Quit Spacemacs                                             |
| `SPS q r` | Restart Spacemacs keeping current window and buffer layout |
