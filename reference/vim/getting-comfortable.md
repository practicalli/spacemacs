# Vim - Getting Comfortable

Getting comfortable with the Vim approach to text manipulation can take a little while.  The quickest approach is to force yourself to use Vim and stick at it until you finally go faster than you were before you started.  This can take a few days of slowness, but it is worth it, so find a few days when you are not as busy and have time to practice.

Start with the built in Emacs EVil Tutor - `SPC h T`

## Helpful websites for Vim commands and keybindings

https://vim-adventures.com/
http://www.openvim.com/
https://www.shortcutfoo.com/
http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
http://www.vimgenius.com/
https://www.labnol.org/internet/learning-vim-for-beginners/28820/
http://codecondo.com/vim-commands/
https://scotch.io/tutorials/getting-started-with-vim-an-interactive-guide


## Basic Movement

Keys in Evil Normal mode for moving the cursor around the buffer.


| Keybinding      | Action                                                 |
|-----------------|--------------------------------------------------------|
| `w`             | Move to start of next word                             |
| `b`             | Move to start of previous word                         |
| `e`             | Move to end of current word                            |
| `j`             | move one line down                                     |
| `k`             | move one line up                                       |
| `l`             | move one character right                               |
| `h`             | move one character left                                |
| `gg`            | jump to top of buffer                                  |
| `G`             | jump to bottom of buffer                               |
| `$`             | jump to end of line                                    |
| `^` or `0`      | jump to start of line                                  |
| C-v             | page down buffer (visual block selection in Spacemacs) |
| `C-u`           | page up buffer                                         |
| `f` <character> | jump to next instance of <character>                   |

> ####Hint::
* Use [avy](https://github.com/abo-abo/avy) for jumping anywhere in your buffers
> Avy commands are in the jump/join/split menu - `SPC j`

![Spacemacs menu - jump](/images/spacemacs-menu-jump.png)

> ####Hint::
> `$` and  `^` for jumping to end and beginning of line is the same syntax as regex


## Insert

Return to Normal mode using `ESC` or `fd` pressed in rapid succession

| Keybinding | Action                           |
|------------|----------------------------------|
| `i`        | Enter insert mode                |
| `o`        | Move to line below > Insert mode |
| `O`        | Move to line above > Insert mode |
|            |                                  |


## Delete text

| Keybindings  | Actions                                            |
|--------------|----------------------------------------------------|
| `x`          | Cut current character                              |
| `dw`         | delete current word                                |
| `dd`         | delete current line                                |
| `d$` or `dD` | delete from current position to end of line        |
| `di"`        | delete inside ""                                   |
| `diw`        | delete inside current word                         |
| `dt"`        | delete to next " (can delete to any character)     |
| `dT"`        | delete to previous " (can delete to any character) |
| `dit`        | [html-mode] delete contents of an html tag         |


## Manipulate text

| Keybinding    | Action                                           |
|---------------|--------------------------------------------------|
| `C-j`         | Split line at cursor                             |
| `S-j`         | Join next line to end of current line            |
| `dd` or `C-k` | Delete current line                              |
| `M-;`         | Insert comment characters (based on buffer mode) |
|               |                                                  |



## Visual Mode - selecting text

Enter visual mode using `v` or `C-SPC`

`S-v` - visual mode line by line
`C-v` - visual mode in region


| Keybinding | Action                      |
|------------|-----------------------------|
| `y`        | copy (yank) on to kill ring |



## edit-multiple-lines (visual mode)

TODO: refactor

```
v
shift-i
type your comment
Enter (puts the comment at the start of the line)

multi-highlight (visual mode)
v
/
name of text you want to highlight
Enter
n
```


## Replace

The following allow you to replace text

| Keybinding | Action                      |
|------------|-----------------------------|
| `r`        | replace character           |
| `~`        | Uppercase current character |
| `cw`       | change current word         |
| `cc`       | change line                 |
|            |                             |




C-a i/d - increasing/decreasing a number

## Vim commands

:explore
:registers - shows the recent actions that you have done
