# Refactor Clojure Code

General refactor steps such as changing function names can be done with the [Evil tools](/spacemacs/spacemacs-basics/evil-tools/), `iedit`, `narrowing` and `helm-ag`. These do not require a running Clojure REPL. Examples of refactoring names: [functions](functions.md), [namespace](namespace.md) or [project](project.md).

[Structural editing](/spacemacs/structural-editing/) via the `SPC k` lisp state uses `smartparens` to alter the your code whist respecting the structure, as defined by parens, `[ ] { } ( )` and even `" "`.  Smartparens works for all languages, although is most useful with lisp syntax.


| Refactor Approach                                                                   | Usage                                                              |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| [narrowing](/spacemacs/spacemacs-basics/evil-tools/narrowing.md)                    | refactor in function on region (usually with iedit)                |
| [iedit](/spacemacs/spacemacs-basics/evil-tools/iedit.md)                            | refactor in current namespace                                      |
| [helm-ag](/spacemacs/spacemacs-basics/evil-tools/replacing-text-across-projects.md) | project wide refactor (usually with iedit)                         |
| [lisp state](/spacemacs/structural-editing/lisp-state.md)                           | A state for smartparens [structural editing](/structural-editing/) |
| [clojure-mode](clojure-mode/)                                                       | ++comma++ ++"r"++ for clojure specific refactor commands           |
| [Clojure LSP](clojure-lsp/)                                                         | ++comma++ ++"r"++ for clojure specific refactor commands           |


## Clojure REPL based refactoring

Clojure specific refactor commands are in the clojure mode refactor menu, `, r` provided by the package `clj-refactor`.  These refactor commands typically require a running Clojure REPL

++comma++ ++"e"++ ++"u"++  `(cider-undef)` when changing a name of a var (`def`, `defn`) to keep the REPL clean of stale names.
