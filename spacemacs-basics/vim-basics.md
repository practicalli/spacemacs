# Vim Basics

Learn the basics of Vim in Spacemacs by following the built-in Evil tutorial: 

`SPC h T`


If you use vim all day and make an effort to use it well, you’ll be editing code faster than you did in your old editor within two weeks. A couple tips to help you on your way: keep a cheat sheet of commands you’re trying to commit to memory, find a friend that’s an experienced vim user or ask in #vim for the many questions that you’ll have in the beginning.

Other learning resource for Vim include:

* [Spacemacs: Migrating from Vim](http://spacemacs.org/doc/VIMUSERS.html)
* [Spacemancs Vim Cheetsheet](https://simpletutorials.com/c/3036/Spacemacs+(Vim+mode)+Cheatsheet)
* [Graphical cheet sheet tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)
* [Vim Casts](http://vimcasts.org/)
* [Editing as a power user - Vim to Spacemacs](https://steemit.com/vim/@hansvb/text-editing-as-a-power-user-from-vim-to-spacemacs-or-how-to-get-things-done)
* [Vim verses Spacemacs](https://www.slant.co/versus/42/69/~vim_vs_spacemacs)

<hr />

Below is a brief summary of the most common commands from the Evil Tutorial, for your quick reference

## Insert to Normal mode 

Rather than reach all the way up to `ESC` you can press `f d` keys in extremely quick succession.

> I found pressing both `f` and `d` together works if you lead ever so slightly with the `f` key.  If you type the characters instead, I suggest you keep trying as once in normal mode you can use `u` to undo and `f d` characters inserted.


## Moving around

To move the cursor, press the `h`,`j`,`k`,`l` keys as indicated.

```
             ^
             k              Hint:  The h key is at the left and moves left.
       < h       l >               The l key is at the right and moves right.
             j                     The j key looks like a down arrow
             v
 ```
 
 Using `Ctrl` in front of the keys jumps to next sections

### Jumping the cursor 

| Command | Action                       |
| ------- | -----------------            |
| `w`     | jump to start of next word   |
| `e`     | jump to end of current word  |
| `$`     | jump to end of current line  |
| `gg`    | go to start of buffer        |
| `G`     | go to end of buffer          |
| `: 4`   | go to line 4                 |
| `%`     | jump to matching parentheses |


## Searching 

Spacemacs provides an easy way to search in a file or in all the projects of a file

| Spacemacs | Evil    | Emacs   | Description             |
| -------   | ---     | ---     | -----------------       |
| `/`       | `C-s`   | `C-s`   | search in file          |
| `SPC /`   | `SPC /` | `M-m /` | search files in project |




### Helm & similar buffers

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
| `:%s/old/new/gc`  | as above, asking for confirmation each time  |



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




Useful Spacemacs commands

SPC q q - quit
SPC w / - split window vertically
SPC w - - split window horizontally
SPC 1   - switch to window 1
SPC 2   - switch to window 2
SPC w c - delete current window
SPC TAB - switch to previous buffer
SPC b b - switch buffers
SPC f f - find a file
SPC f s - save a file (:w also works)
SPC p p - open project
SPC p h - find a file in current project
SPC b d - kill current buffer
SPC b M - move buffer to another window
SPC v   - enter expand-region mode

Useful Vim key bindings

## movement

0 - beginning of line
^ - beginning of non-whitespace
$ - end of line
9j - move down 9 lines
w - move forward by word
b - move backward by word
gg - first line
G - last line
C-u - up half page
C-d - down half page
f/ - move forward to first "/" character
t/ = move forward right before the first "/" character
; - repeat that command again
H - head of the screen
M - middle of the screen
L - last of the screen
} - move forward by paragraph or block
{ - move backwards by paragraph or block
* - search for word under the cursor
    n - search again forward
    N - search again backwards
# - search backwards for word under cursor
/ - search forward
? - search backward
% - find matching brace, paren, etc
ma - mark a line in a file with marker "a"
`a - after moving around, go back to the exact position of marker "a"
'a - after moving around, go back to line of marker "a"
:marks - view all the marks
'' - go to the last place you were
[{ - jump back to the "{" at the beginning of the current code block

## editing

x - delete char under cursor
X - delete char before cursor
A - add to end of line
I - insert at the beginning of the line
dd - delete line
D - delete from cursor to end of line
di' - delete text inside single quotes
yy - copy line
Y - copy from cursor to end of line
cc - change line
C - change from cursor to end of line
cit - change text inside html tag
ci' - change text inside single quotes
ci{ - change text inside curly brackets.
ci... - etc
p - paste after cursor
P = paste before cursor
o - add line below
O - add line above
. = repeat last comment
r - replace character
R - replace. (overwrite) (good for columns of text)
J - join line (cursor can be anywhere on line)

visual mode
-----------
v - visual char mode
V - visual line mode
C-v - block visual mode
