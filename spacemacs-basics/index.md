# Spacemacs Basics 

> TODO: Expand following content into sections


## Manipulating words 

| Spacemacs | Major mode | Emacs | Evil  | Command | Description                                 |
|-----------|------------|-------|-------|---------|---------------------------------------------|
|           |            | `C-t` | `x p` |         | Transpose characters                        |
|           |            | `M-c` |       |         | Capitalise word                             |
|           |            | `M-l` |       |         | Lowercase word (no keybinding in Spacemacs) |
|           |            | `M-u` |       |         | Uppercase word                              |


## Escaping Insert state and commands

Typing quickly `fd` takes me out of insert state. What is going on?

This is a feature of Spacemacs, enabling you to easily escape from a lot of situations, like escaping from insert state to normal state.

The sequence of characters used can be customized. See the documentation for more information.

If you don't like this feature, you can Deactivate it by adding evil-escape to dotspacemacs-excluded-packages in your init file.

## Selecting 

You can select text from Vim normal state by entering the visual state

| Spacemacs | Major mode | Emacs   | Evil normal | Command | Description                    |
|-----------|------------|---------|-------------|---------|--------------------------------|
|           |            | `C-SPC` | `v`         |         | Toggle visual mode / selection |



## Add comment / Toggle comment 

In Vim normal mode you can comment out a single line using `g c c`.

To comment multiple lines you can use the repeat command style, especially if you are using relative line numbers.  So using `g c 3 j` will comment out the current line and the following two lines below.  You can comment out in reverse using `g c 3 k`.

In Visual state, `v`, select the lines you wish to comment and use `g c` to comment all the marked lines.  Partially marked lines are not commented.

| Spacemacs | Visual State | Emacs | Evil Normal | Command | Description                           |
|-----------|--------------|-------|-------------|---------|---------------------------------------|
|           | `g c`        | `M-;` |             |         | Comment marked region                 |
|           |              |       | `g c c`     |         | Comment line                          |
|           |              |       | `g c 5 j`   |         | Comment 5 lines forward from current  |
|           |              |       | `g c 5 k`   |         | Comment 5 lines backward from current |

http://spacemacs.org/layers/+vim/evil-commentary/README.html


## Spelling

As you are typing in any(?) buffer then Spacemacs is checking your spelling as you type.  If you type a word that Spacemacs does not recognise then that word is underscored in red.  To correct a spelling:

* Move to the word that is incorrectly spelt
* `SPC S c` to change the word and show a list of suggested words
* Either type in a new spelling or use `C-j` and `C-k` keys to move down and back up the list of words, using `RET` to select that word.



## Scrolling 

in vim command mode you can scroll just the text using the classic vi bindings.  This does not scroll the cursor unless the cursor hist the top or bottom of the window, in which case the cursor stays at that window boundry.

`C-y` - scroll down
`C-e` - scroll text up



## Inserting a character multiple times 

In Vim normal mode (yellow) type the number of times to repeat the character followed immediately followed by `i`, then the character or word you want to reapeat.  Then press `ESC` or `fd` and the character will be printed repeatedly

redrum redrum redrum redrum redrum redrum redrum redrum redrum redrum 


## jump around... 

`SPC j i` shows imenu that lists all the def and defn expressions in the current buffer, allowing you to jump to one of these definitions directly by typing its name or using `C-j` and `C-k` to select the name and pressing `RET` to jump to the name in the buffer


`SPC j l` labels each line of the buffer with a short, unique character code.  By entering the character code you are taken directly to the specific line.  This is the `avy goto line` function and this works on all visible buffers by default, although it can be just shown on the current buffer (TODO: how is this set).

## searching 

search with `SPc /`

Matching only within a boundary by wrapping your search term with `\b`.

So if you want to match `or` and not word, then you would do 

```
SPC / \bor\b
```

## getting stuff done - vim basics 

http://paul-gowder.com/emacs.html


## changing escape sequence for vim

(setq evil-escape-key-sequence "jk")




## Working with Buffers

To work with files in Emacs, they are first loaded into a **Buffer**.

So when you open a file with `M-x find file` or `SPC f f` a new buffer is created so you can manage that file.

Buffers are displayed in a window and you can change the window to show any of the current buffers.

Here are the most commonly used buffer commands

| Keybinding | Command                        | Description                               |
|------------|--------------------------------|-------------------------------------------|
| `SPC b b`  | helm-mini                      | List current buffers                      |
| `SPC b d`  | kill-this-buffer               | Kill current buffer                       |
| `SPC b h`  | home                           | Switch to Spacemacs home page             |
| `SPC b n`  | next-buffer                    | Switch to next buffer                     |
| `SPC b p`  | previous-buffer                | Switch to previous buffer                 |
| `SPC b s`  | switch-to-scratch-buffer       | Switch to the **scratch** buffer          |
| `SPC b Y`  | copy-whole-buffer-to-clipboard | Copy current buffer contents to kill ring |
  
See the full buffer menu via `SPC b`

![Spacemacs Buffer Menu](/images/spacemacs-buffer-menu.png)


## Managing Files

| Spacemacs | Emacs     | Evil    | Command                    |
|-----------|-----------|---------|----------------------------|
| `SPC f R` | `M-m f R` | `, f R` | rename-current-buffer-file |


Also consider using:

* dird
* neotree
* projectile


## Editing text (especially in Evil mode)

See Vim section 

## Working with Windows

| Keybinding   | Command | Description                       |
|--------------|---------|-----------------------------------|
| `C-x 1`      |         | Close current window              |
| `C-x 2`      |         | Vertically split current window   |
| `C-x 3`      |         | Horizontally split current window |
| `SPC number` |         | Jump to window number             |


> You can also create layouts that are a collection of windows
