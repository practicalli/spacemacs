# Spacemacs Mini Cheetsheet

`Ctrl-g` two times will cancel most actions in Spacemacs

## Clojure

| keybinding | action                                     |
|------------|--------------------------------------------|
| `, '`      | start the REPL                             |
| `, e f`    | evaluate a function                        |
| `, e ;`    | evaluate a function, add result as comment |
| `, s s`    | toggle between source and repl             |
| `, t a`    | run all tests                              |


## Working with projects

| keybinding   | action                               |
|--------------|--------------------------------------|
| `SPC f f`    | find file                            |
| `SPC p f`    | project specific find file           |
| `SPC p a`    | toggle between source and test files |
| `SPC TAB`    | switch to previous buffer            |
| `SPC /`      | search in project                    |
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
| `/`        | search forwards in current buffer            |

### Changing Text

| Command  | Action                                          |
| ---      | ---                                             |
| `i`      | edit at cursor                                  |
| `a`      | append - edit after cursor                      |
| `o`      | new line after cursor                           |
| `O`      | new line before cursor                          |
| `ESC`    | normal mode                                     |
| `x`      | delete character and add to kill ring           |
| `p`      | paste (put)                                     |
| `u`      | undo                                            |
| `Ctrl-r` | redo                                            |
| `g c c`  | comment current line                            |
| `d$`     | delete to end of line                           |
| `dd`     | delete the current line                         |
| `dt`     | delete to a character (not including character) |

## Quit / restart

| keybinding | action                                       |
|------------|----------------------------------------------|
| `SPC q q` | Quit Spacemacs                                             |
| `SPS q r` | Restart Spacemacs keeping current window and buffer layout |
