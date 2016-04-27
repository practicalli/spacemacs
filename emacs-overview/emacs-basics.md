# Reference



##  Starting emacs

It's really simple. Try "emacs &" for instance. You can add some
colour to it, if you want, e.g. "emacs -fg Black -bg Wheat &", which
is quite nice, I think. If you want to run it from a remote computer,
then type this: "emacs -fg Black -bg Wheat -d <local_address>:0.0 &",
and don't forget to add the remote machine to the access control list
with "xhost +<remote_address>". That's all you need to know about
it. Maybe you should write an alias for it in your ~/.profile file.

## Basic terms

The 'meta' key is usually the 'Alt' or 'Start Menu' key on your
keyboard.

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

1) Basic functions
------------------
1.1) Managing files, buffers and windows
========================================
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

1.2) Simple editing
===================
C-SPC      (set-mark-command)         : sets the mark where the cursor is
C-w        (kill-region)              : cuts the region from the mark
                                        till point to the clipboard
M-w	   (kill-ring-save)	      : copies the region from the mark
					till point to the clipboard
C-y        (yank)                     : pastes from the clipboard
C-a        (beginning-of-line)        : positions the cursor to the 
                                        beginning of the line
C-e        (end-of-line)              : positions the cursor to the
                                        end of the line
C-t        (transpose-chars)          : swaps the last two characters
M-t        (transpose-words)          : swaps the last two words
C-x C-t    (transpose-lines)          : swaps the last two lines

1.3) Search and replace
=======================
If the search string contains uppercase letters, it will be case sensitive.
Case sensitivity can be toggled with M-c during search in newer versions.

C-s        (isearch-forward)          : searches forward
C-r        (isearch-backward)         : searches backward
M-%        (query-replace)            : replaces a string wherever it 
                                        occurs with another, and asks 
                                        for permission everytime
           (replace-string)           : replaces a string wherever it 
                                        occurs with another

1.4) Other useful things
========================
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

2) The ~/.emacs file
--------------------
The commands you write here will be executed as emacs
starts. I recommend the following line:
"(global-font-lock-mode t)", that turns the colouring on. 

If you want to use additional libraries, e.g. ~/games/malyon.el, you 
eshould write a line like this: "(load-library "~/games/malyon.el")".
If you want to load it only when you run it, use this line:
"(autoload 'malyon "~/games/malyon.el" "z-code interpreter" t)".
Here the syntax is: "(autoload 'command "library.el" "description" t)".

When you have a lot of .el files, it is convenient to put them in one
directory, and add that directory to the load path:
"(setq load-path (append load-path '(nil "~/emacs-lisp-files")))".
The syntax: "(setq variable value)". 

You can assign hot-keys for frequently used commands:
"(global-set-key key 'command)", e.g. I recommend the following:
(global-set-key "\C-cr" 'revert-buffer) ; C-c r reverts the file from disk
(global-set-key [f12] 'compile)
(global-set-key [f10] 'shell)
(global-set-key [end] 'end-of-buffer) ; only for the new emacs
(global-set-key [home] 'beginning-of-buffer) ; only for the new emacs

3) Advanced functions
---------------------
3.1) Modes
==========
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

I advise to use IRChat in a new frame (i.e. in another window):
           (new-frame)                : opens a new window (only in X/Windows)

3.1.1) LaTeX mode
~~~~~~~~~~~~~~~~~
 
3.1.2) C++ mode
~~~~~~~~~~~~~~~
M-;        (indent-for-comment)       : begins a comment at the right side
C-c C-c    (comment-region)           : comments the region
C-u C-c C-c                           : uncomments the region
           (compile)                  : compiles the program
C-x `      (next-error)               : positions the cursor at the next error

3.1.3) Ada mode
~~~~~~~~~~~~~~~
M-;        (indent-for-comment)       : begins a comment at the right side
C-c ;      (comment-region)           : comments the region
C-c :      (ada-uncomment-region)     : uncomments the region
C-c C-c    (compile)                  : compiles the program
C-x `      (next-error)               : positions the cursor at the next error

3.1.4) IRC mode
~~~~~~~~~~~~~~~
There are some variables that you should set:
      irchat-server    : the irc server, e.g. irc.extra.hu
      irchat-name      : your 'real' name
      irchat-nickname  : your nickname
      irchat-channel-buffer-mode : set this to t to see the server's messages 
      irchat-startup-channel : opens a channel right after connecting

C-c r      (irchat-Command-reconfigure-windows) : restores the
                                                  windows' positions 
C-c /      (irchat-Command-generic)   : runs an IRC command
C-c n      (irchat-Command-nickname)  : changes your nickname
C-c s      (irchat-Command-servers)   : changes the server
C-c p      (irchat-Command-send-private) : sends a private message
C-c <num>  (irchat-Command-jump-channel<num>) : switches to channel <num>
C-c q      (irchat-Command-quit)      : quits IRChat
C-c t      (irchat-Command-topic)     : changes the topic for current channel
C-c i      (irchat-Command-invite)    : invites someone to the current channel
C-c f      (irchat-Command-finger)    : fingers someone
C-c j      (irchat-Command-join)      : joins a channel

3.1.5 Rmail mode
~~~~~~~~~~~~~~~~

3.1.6 Gnus mode
~~~~~~~~~~~~~~~

3.1.7 TCL mode
~~~~~~~~~~~~~~
C-c ESC a  (tcl-send-buffer)          : executes the buffer in TCL
C-c ESC e  (tcl-send-current-line)    : executes the current line in TCL
C-c ESC q  (tcl-kill-process)         : exits the running TCL process
C-c ESC u  (tcl-restart-with-whole-file): closes the running TCL process and
                                          executes the current file

3.2) External programs
======================
           (shell)                    : starts a terminal in the window
           (ediff)                    : compares two files and makes changes
           (gdb)                      : runs the GNU Debugger

3.3) Simple editing (2)
=======================
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

3.4) Search and replace (2)
===========================
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
4) Fun things to do
-------------------
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
5) Did you know?
----------------
5.1) You can complete minibuffer commands with TAB. If you press it
twice, completions appear in the next window.
5.2) You can hide most of the 'information' buffers (like info, man, 
completions, help etc.) with q.
5.3) If you press enter on a directory when typing an address in the 
minibuffer, a friendly navigator appears.



