# REPL History

Scroll back through the history in the REPL buffer, allowing evaluation of previously entered expressions. Any of the previous expressions can be edited before evaluating.

In Evil Insert state or Emacs state:

++ctrl+arrow-up++ - scrolls backwards through the history

++ctrl+arrow-up++ - scrolls forwards through the history

> History navigation not supported in Evil Normal state


## `cider-repl-history` complete history

View the complete history of expressions in a separate buffer via the REPL Command menu, available when the REPL buffer is active.  This does not include the history of results (use a data inspector such as Portal).

In Evil Insert state or Emacs state:

++comma++ open the REPL command menu

Type `history` at the REPL command menu prompt, press `RET` to select.

A new buffer opens in Evil Normal mode and shows all the previous history, separated by comments.

[Spacemacs Clojure REPL history](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-repl-history-buffer.png)


!!! Hint "Switch to Vim insert or Emacs state"
    The REPL History buffer only accepts commands when in Vim insert or Emacs state

  ++"i"++ evil insert state

  ++ctrl+"z"++ emacs state

In Evil Insert or Emacs state:

++enter++ or ++spc++ will send the current expression under the cursor to the REPL buffer and close the repl-history buffer.

In Evil Normal state:

++spc++ ++spc++ `cider-history-use-and-quit` sends the current expression to the REPL buffer and closes the REPL history.


![Spacemacs Clojure REPL History - keybindings code](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-repl-history-keybindings-code.png)
