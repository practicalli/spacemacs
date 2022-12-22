# REPL History


You can scroll back through the history in the REPL buffer, allowing you to evaluate previous expressions evaluated in the REPL.  You can also change any of the previous expressions before evaluating.

In Vim Insert state or Emacs state.

| Vim Insert state | Description                           |
|------------------|---------------------------------------|
| `C-🡅`            | scrolls backwards through the history |
| `C-🡇`            | scrolls forwards through the history  |

The above commands do not work in Vim normal state.


## View the whole history with `cider-repl-history`

You can view the history of expressions in a separate buffer via the REPL Command menu, available when the REPL buffer is active.  This does not include the history of results (data inspectors like Portal can be used to navigate evaluated history).

In Vim Insert state or Emacs state:

`,` open the REPL command menu

Type `history` at the REPL command menu prompt, press `RET` to select.

A new buffer opens in Vim normal mode and shows all the previous history, separated by comments.

[![Spacemacs Clojure REPL history](/spacemacs/images/spacemacs-clojure-repl-history-buffer.png)](/spacemacs/images/spacemacs-clojure-repl-history-buffer.png)


> #### Hint:: Switch to Vim insert or Emacs state
> The REPL History buffer only accepts commands when in Vim insert or Emacs state
>
> `i` evil insert state
> `C-z` emacs state

In Evil Insert or Emacs state:

`RTN` or `SPC` will send the current expression under the cursor to the REPL buffer and close the repl-history buffer.


In Evil Normal state:

`SPC SPC cider-history-use-and-quit` sends the current expression to the REPL buffer and closes the REPL history.


[![Spacemacs Clojure REPL History - keybindings code](/spacemacs/images/spacemacs-clojure-repl-history-keybindings-code.png)](/spacemacs/images/spacemacs-clojure-repl-history-keybindings-code.png)
