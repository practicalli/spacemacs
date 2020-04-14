# Emacs Quick Reference

> ####Todo::Consider moving this to just a reference section.  Vim style is the default approach for this book and whist the Emacs bindings are still available in Spacemacs, they are not as focused on great user experience as Vim.

As Spacemacs is built on Emacs, its worth spending a little time getitng uses to working with Emacs.

Here is a short summary of what you need to know.  For more details use the built in docs with `M-x helm-spacemacs` or `M-m h SPC`.

##  Starting emacs

Either `emacs` as a command line or a desktop icon.


## Basic terms

The 'meta' key is usually the 'Alt' or 'Start Menu' key on your
keyboard.

```
C-<char>   : control + <char>
M-<char>   : meta + <char>
SPC        : space
RET        : return / enter
DEL        : delete or backspace
ESC        : escape; ESC <char> is the same as M-<char>

buffer     : Everything you use, edit or read in emacs. This can be an
             open file, the results of a compilation, your mail and
             several other things, like e.g. a shell window.
mark       : It is a position in a buffer, that is pushed in a special
             stack, when jumping in the buffer etc. It can be pushed
             manually.
mode       : Every buffer has a mode. A mode can have special
             functions, colouring, indentions etc.
minibuffer : The line at the bottom, where you can enter commands after
             typing M-x. Most of these commands can be invoked by
             pressing *lot of* keys, but don't worry... from now on,
             I'm going to introduce some of these functions, with the
             actual command name in round brackets.
point      : the actual cursor position
```



# Managing files, buffers and windows

```
C-x C-f    (find-file)                : opens a file
C-x 4 C-f  (find-file-other-window)   : opens a file in the next window
C-x k      (kill-buffer)              : closes the current buffer
C-x C-c    (save-buffers-kill-emacs)  : asks whether it should save your
                                        files and exits
C-x C-s    (save-buffer)              : saves the current buffer
C-x C-w    (write-file)               : saves in a file of your choice
C-x C-b    (list-buffers)             : lists and manages all open
                                        buffers, press ? for help
C-x b      (switch-to-buffer)         : changes the current buffer
C-x 4 b    (switch-to-buffer-other-window) : changes the next window's buffer
C-x 2      (split-window-vertically)  : splits the current window
                                        vertically in half
C-x 3      (split-window-horizontally): splits the current window
                                        horizontally in half
C-x 1      (delete-other-windows)     : closes every but the current window
C-x 0      (delete-window)            : closes the current window
C-x o      (other-window)             : switches to the next window
```

# Simple editing

```
C-SPC      (set-mark-command)         : sets the mark where the cursor is
C-w        (kill-region)              : cuts the region from the mark
                                        till point to the clipboard
M-w    (kill-ring-save)       : copies the region from the mark
                    till point to the clipboard
C-y        (yank)                     : pastes from the clipboard
C-a        (beginning-of-line)        : positions the cursor to the
                                        beginning of the line
C-e        (end-of-line)              : positions the cursor to the
                                        end of the line
C-t        (transpose-chars)          : swaps the last two characters
M-t        (transpose-words)          : swaps the last two words
C-x C-t    (transpose-lines)          : swaps the last two lines
```

# Search and replace

If the search string contains uppercase letters, it will be case sensitive.
Case sensitivity can be toggled with M-c during search in newer versions.

```
C-s        (isearch-forward)          : searches forward
C-r        (isearch-backward)         : searches backward
M-%        (query-replace)            : replaces a string wherever it
                                        occurs with another, and asks
                                        for permission everytime
           (replace-string)           : replaces a string wherever it
                                        occurs with another
```

# Other useful things

```
           (set-variable)             : sets the value of a variable
C-h v      (describe-variable)        : displays the current value and
                        the meaning of a variable
C-h m      (describe-mode)            : describes the current mode and lists
                                        its functions and key combinations
C-h f      (describe-function)        : explains what a function does
C-g        (keyboard-quit)            : exits from the minibuffer
C-h ?      (help-for-help)            : gives a help for using help commands
C-_        (undo)                     : undoes the last change
           (man)                      : invokes the manual in the next window
```


# Managing case

| Spacemacs | Major mode | Emacs     | Evil | Command           | Description                          |
|-----------|------------|-----------|------|-------------------|--------------------------------------|
|           |            | `C-x C-l` |      | `downcase-region` | Convert region to lower case         |
|           |            | `C-x C-u` |      | `upcase-region`   | Convert region to upper case         |
|           |            | `M-c`     |      | `capitalize-word` | Capitalize the following word        |
|           |            | `M-u`     |      | `upcase-word`     | Convert following word to upper case |
|           |            | `M-l`  ** |      | `downcase-word`   | Convert following word to lower case |

** The keybinding `M-l` is bound to `markdow-demote` in spacemacs


# The ~/.emacs file

You can assign hot-keys for frequently used commands:

"(global-set-key key 'command)", e.g. I recommend the following:

(global-set-key "\C-cr" 'revert-buffer) ; C-c r reverts the file from disk
(global-set-key [f12] 'compile)
(global-set-key [f10] 'shell)
(global-set-key [end] 'end-of-buffer) ; only for the new emacs
(global-set-key [home] 'beginning-of-buffer) ; only for the new emacs


# Advanced functions

Modes

```
Mode-specific indention:
TAB        (indent-relative)          : indents the current line
C-M-\      (indent-region)            : indents the selected region

Modes are automatically entered, e.g. when you open a file of a known
extension. To force a mode-change, you can type these:
           (latex-mode)               : enters LaTeX mode
           (c++-mode)                 : enters C++ mode
           (ada-mode)                 : enters Ada mode
           (irchat)                   : enters IRC mode (IRChat 2.4+ needed)
           (rmail)                    : enters mail mode
           (gnus)                     : enters news-reading mode
           (tcl-mode)                 : enters TCL mode
```

I advise to use IRChat in a new frame (i.e. in another window):
           (new-frame)                : opens a new window (only in X/Windows)



# External programs

```
           (shell)                    : starts a terminal in the window
           (ediff)                    : compares two files and makes changes
           (gdb)                      : runs the GNU Debug tool
```

# Simple editing (2)

```
M-PgUp     (scroll-other-window-down) : scrolls up the next window
M-PgDn     (scroll-other-window)      : scrolls down the next window
C-x C-SPC  (pop-global-mark)          : pops the top mark from the stack,
                                        and moves the cursor there
C-x C-x    (exchange-point-and-mark)  : exchanges the mark with cursor position
C-x r SPC  (point-to-register)        : stores the buffer & cursor position
                                        to a register
C-x r j    (jump-to-register)         : jumps to a previously stored
                                        buffer/position.
M-D        (kill-word)                : cuts from point until
                                        the next whitespace character
M-DEL      (backward-kill-word)       : cuts from the last whitespace
                                        character until point
C-k        (kill-line)                : cuts the line from point
C-x r k    (kill-rectangle)           : cuts the rectangle defined by
                                        the mark as upper left and
                                        point as lower right corner
                                        to the clipboard
C-x r y    (yank-rectangle)           : pastes a rectangle
M-c        (capitalize-word)          : capitalizes the word under cursor
M-l        (downcase-word)            : changes the word to lowercase
M-u        (upcase-word)              : changes the word to uppercase
M-/        (dabbrev-expand)           : tries to complete the word
                                        you're writing with a word
                                        occuring in one of the
                                        buffers; it tries another
                                        completion when repeated
           (iso-accents-mode)         : turns on/off flying accents (',~,^)
```


# Search and replace (2)

```
C-x n n    (narrow-to-region)         : temporarily crops the buffer to the
                                        selected region
C-x n w    (widen)                    : restores the un-cropped buffer
C-M-%      (query-replace-regexp)     : replaces a regexp wherever it
                                        occurs with a string, and asks
                                        for permission everytime
           (replace-regexp)           : replaces a regexp wherever it
                                        occurs with a string
           (occur)                    : lists all occurences of search string
           (find-name-dired)          : searches for a file with the
                                        specified name
           (find-grep-dired)          : searches for a file that contains
                                        the specified string

```

#  Fun things to do

```
           (gomoku)                   : emacs plays gomoku with you
           (blackbox)                 : a nice logical game
           (dunnet)                   : a hilarious interactive fiction
           (malyon)                   : a z-code player; you can download
                                        tons of IF games and this library
                                        at http://www.ifarchive.org/
           (calendar)                 : a calendar that tells you
                                        everything you want to know about
                                        any day and also provides a
                                        diary - press ? for commands
```


# Did you know?

* You can complete minibuffer commands with TAB. If you press it twice, completions appear in the next window.
* You can hide most of the 'information' buffers (like info, man, completions, help etc.) with q.
* If you press enter on a directory when typing an address in the minibuffer, a friendly navigator appears.


## Reference

* [Mastering Emacs](https://www.masteringemacs.org/)
