# Un-define expressions
`, e u` un-defines the current function name or var, `defn`/`def`, removing it from the running REPL.

`def` and `defn` names change during development, especially when code is refactored. Un-defining unwanted vars keeps the REPL clean and avoids the need to restart the REPL.


## Undefine in the REPL buffer
`, undef` in the REPL buffer (Vim Insert / Emacs state) prompts for a symbol to undefine.

`TAB` when typing the symbol name will popup a list of matching symbols available in the REPL.  Select the name you wish to undef

[![Spacemacs Clojure REPL undef symbol helm narrowing](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)
