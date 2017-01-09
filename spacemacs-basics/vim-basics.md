# Vim Basics

The best way to learn the basics of Vim in Spacemacs is to follow the Evil Tutorial.  Start the tutorial via 

`SPC h T`

Here is a brief summary of the Evil Tutorial, for quick reference

# Moving around

## Moving the cursor 

To move the cursor, press the `h`,`j`,`k`,`l` keys as indicated.

```
             ^
             k              Hint:  The h key is at the left and moves left.
       < h       l >               The l key is at the right and moves right.
             j                     The j key looks like a down arrow
             v
 ```
 
 Using `Ctrl` in front of the keys jumps to next sections

## Jumping the cursor 

| Command | Action                       |
| ------- | -----------------            |
| `w`     | jump to start of next word   |
| `e`     | jump to end of current word  |
| `$`     | jump to end of current line  |
| `gg`    | go to start of buffer        |
| `G`     | go to end of buffer          |
| `: 4`   | go to line 4                 |
| `%`     | jump to matching parentheses |


## Helm & similar buffers

Use `Ctrl` in front of the usual move keys, eg `Ctrl-j`.  Works for helm, magit, etc
 

# Quit Emacs / Save your work

Buffers are typically associated with files, so when you write a buffer you are saving all your changes to the associated file.

| Command | Action                            |
| ------- | -----------------                 |
| `:w`    | Write current buffer              |
| `wqa`   | Write current buffer and quit     |
| `:q`    | Quit (unless buffer not saved)    |
| `:qa!`  | Quit without saving               |

> Buffers such as scratch do not have files associated.  If you attempt to save them they should prompt you to provide a file name.


# Text Editing 

The following commands put you into the Evil Insert mode

| Command | Action                       |
| ---     | ---                          |
| `i`     | edit at cursor               |
| `a`     | append - edit after cursor   |
| `o`     | new line after cursor        |
| `O`     | new line before cursor       |

> Press `ESC` to return to normal state from insert mode 

## Cut, paste, undo, redo

| Command  | Action                                |
| -------  | -----------------                     |
| `x`      | delete character and add to kill ring |
| `p`      | paste (put)                           |
| `u`      | undo                                  |
| `Ctrl-r` | redo                                  |


## Changing text 

## Replace, change

| Command | Action                                  |
| ------- | -----------------                       |
| `r`     | replace the character under cursor      |
| `R`     | replace multiple characters until `ESC` |
| `cw`    | change word from cursor to end          |
| `4 c w` | change 4 words                          |


## Delete commands

| Command | Action                                     |
| ---     | ---                                        |
| `de`    | delete to end of word, not including space |
| `dw`    | delete to end of word, including space     |
| `d$`    | delete to end of line                      |
| `dd`    | delete the current line                    |
| `4 d w` | delete 4 words                             |
| `4 d $` | delete 4 lines to end                      |


## Search commands

| Command | Action                 |
| ---     | ---                    |
| `/`     | search forwards        |
| `n`     | search forward again   |
| `?`     | search backwards       |
| `N`     | search backwards again |

> Search will wrap around a buffer when it reaches the end

## Substitution

| Command           | Action                                       |
| ---               | ---                                          |
| `:s/old/new`      | substitute new for the first old pattern     |
| `:s/old/new/g`    | substitute new for all 'old's on a line      |
| `:#,#s/old/new/g` | substitute phrases between two line #'s type |
| `:%s/old/new/g`   | substitute all occurrences in the file       |
| `:%s/old/new/g`   | as above, asking for confirmation each time  |



# Files 

`SPC f f` is the Spacemacs way of opening files.  You can create a file that does not currently exist by entering the file name and confirming you want to create the file when prompted.


# External commands 

You can run external commands using `:!` followed by a command.  For example:

`:!ls` - run the `ls` command

> Spacemacs shell can be configured to pop-up a shell buffer to run commands from the directory of the current buffer.


# `evil-escape` Back to Vim command mode

Typing quickly `fd` takes you out of insert state back to normal state, rather than having to move your hands to press `ESC`.

This sequence of characters can be [customized](http://spacemacs.org/doc/DOCUMENTATION.html#commands). 

Deactivate this feature by adding `evil-escape` to `dotspacemacs-excluded-packages` in the `~/.spacemacs` configuration file.
