# Un-define expressions

`def`, `defn` names change during development, especially when code is refactored.  Un-define removes unwanted vars and keeps the REPL clean and avoids the need to restart the REPL.

`, e u`  (`cider-undef`) un-defines the current function name or var, e.g. `defn`/`def` / `deftest`, removing it from the running REPL.

When cursor is not on a function name or any var, the mini-buffer prompts for the name to undefine.

> #### Hint::Cider refresh or restart for multiple changes
> [Refresh or restart the REPL](https://practical.li/spacemacs/clojure-repl/refresh-restart-repl.html) when there are multiple changes made to a namespace or across multiple namespaces.


## Undefine tests before refactor

If the name of an existing test is changed, the original test will still run when calling the cider test commands.  This can lead to confusing test results.

`, e u` on the `deftest` expression before changing its name will ensure that the existing test is removed from the REPL and no longer run.


## Undefine in the REPL buffer

`, undef` in the REPL buffer (Vim Insert / Emacs state) prompts for a symbol to undefine.

`TAB` when typing the symbol name will popup a list of matching symbols available in the REPL.  Select the name you wish to undef

[![Spacemacs Clojure REPL undef symbol helm narrowing](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)


## Undefine using Clojure

`ns-unmap` will remove a symbol from the running REPL.  Use `*ns*` dynamic variable to represent the current namespace.

```clojure
(ns-unmap *ns* 'name-before-refactor)
```

Or specify the namespace if the symbol is not in the current namespace

```clojure
(ns-unmap 'practicalli.service 'name-before-refactor)
```
