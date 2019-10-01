# REPL History


You can scroll back through the history in the REPL buffer, allowing you to evaluate previous expressions evaluated in the REPL.  You can also change any of the previous expressions before evaluating.

In Vim Insert state or Emacs state.

| Vim Insert state | Description                           |
|------------------|---------------------------------------|
| `C-🡅`            | scrolls backwards through the history |
| `C-🡇`            | scrolls forwards through the history  |

The above commands do not work in Vim normal state.


## View the whole history with `cider-repl-history`

You can view the whole history in a separate buffer via the REPL Command menu, available when the REPL buffer is active.

In Vim Insert state or Emacs state:

`,` open the REPL command menu

Type `history` at the REPL command menu prompt, press `RET` to select.

A new buffer opens in Vim normal mode and shows all the previous history, separated by comments.

[![Spacemacs Clojure REPL history](/images/spacemacs-clojure-repl-history-buffer.png)](/images/spacemacs-clojure-repl-history-buffer.png)


> #### Hint:: Switch to Vim insert or Emacs state
> The REPL History buffer only accepts commands when in Vim insert or Emacs state
>
> `i` vim insert state
> `C-z` emacs state

In Vim Insert or Emacs state:

`RTN` or `SPC` will send the current expression under the cursor to the REPL buffer and close the repl-history buffer.


In Vim Normal state:

`SPC SPC cider-history-use-and-quit` sends the current expression to the REPL buffer and closes the REPL history.


------------------------------------------


> #### TODO:: Pull Request to support Evil
> [#11431](https://github.com/syl20bnr/spacemacs/pull/11431) is a pull request to add Evil keybindings to the REPL buffer, so you can press `RTN` to evaluate code when in Vim Normal mode.  It will also add Vim Normal keybindings to send the current expression to the REPL.

[![Spacemacs Clojure REPL History - keybindings code](/images/spacemacs-clojure-repl-history-keybindings-code.png)](/images/spacemacs-clojure-repl-history-keybindings-code.png)
