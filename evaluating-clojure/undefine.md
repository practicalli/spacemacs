# Un-define expressions
`, e u` un-defines the current function name or var, `defn`/`def` / `deftest`, removing it from the running REPL.  If the cursor is not on a function name or any other var, then a prompt for the expression to undefine shows in the mini-buffer.


## Undefine before refactor
`def`, `defn` names change during development, especially when code is refactored.  Un-define removes unwanted vars and keeps the REPL clean and avoids the need to restart the REPL.


## Undefine tests before refactor
If the name of an existing test is changed, the original test will still run when calling the cider test commands.  This can lead to confusing test results.

`, e u` on the `deftest` expression before changing its name will ensure that the existing test is removed from the REPL and no longer run.


## Undefine in the REPL buffer
`, undef` in the REPL buffer (Vim Insert / Emacs state) prompts for a symbol to undefine.

`TAB` when typing the symbol name will popup a list of matching symbols available in the REPL.  Select the name you wish to undef

[![Spacemacs Clojure REPL undef symbol helm narrowing](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)
