# REPL History

You can scroll back through the history in the REPL one by one using `C-UpArrow` in Vim Insert state or Emacs state.


## View the whole history

You can view the whole history in a separate buffer via the REPL Command menu.

With the REPL buffer active and in either Vim Insert state or Emacs state:

`,` opens the REPL command menu

Start typing `history` and when that entry is highlighted in the menu, press `RET`.

A new buffer opens in Vim normal mode and shows all the previous history, separated by comments.

[![Spacemacs Clojure REPL history](/images/spacemacs-clojure-repl-history-buffer.png)](/images/spacemacs-clojure-repl-history-buffer.png)


## Using the REPL history buffer

`[[` and `]]` will jump to the start or end of each expression in the REPL history.

`SPC SPC cider-history-use-and-quit` sends the current expression to the REPL buffer and closes the REPL history.


Alternatively, you can copy and paste an expresion from the REPL history:

`v SPC v` will select the whole line, `y` yanks (copies) the line.

`SPC <n>` to jump to the REPL buffer by its window number, `<n>`, `p` to paste the selected text into the REPL


`SPC b d` closes the REPL history buffer, or

`SPC w d` closes the window that contains the REPL history buffer


> ####TODO::REPL history Buffer keybindings in Vim Insert / Emacs mode
> It seems that the REPL history buffer is configured for keybindings in when in Vim normal state or Emacs State

[![Spacemacs Clojure REPL History - keybindings code](/images/spacemacs-clojure-repl-history-keybindings-code.png)](/images/spacemacs-clojure-repl-history-keybindings-code.png)
