# Refactor Clojure Code

General refactor steps such as changing function names can be done with the [Evil tools](../spacemacs-basics/evil-tools/index.md), `iedit`, `narrowing` and `helm-ag`. General tools do not require a running Clojure REPL.

Examples of refactoring names: [functions](./functions.md), [namespace](./namespace.md) or [project](./project.md).

[Structural editing](../structural-editing/index.md) via the `SPC k` lisp state uses `smartparens` to alter the your code whist respecting the structure, as defined by parens, `[ ] { } ( )` and even `" "`. Smartparens works for all languages, although is most useful with lisp syntax.


| Refactor Approach                                                           | Usage                                                    |
| --------------------------------------------------------------------------- | -------------------------------------------------------- |
| [narrowing](../spacemacs-basics/evil-tools/narrowing.md)                    | refactor in function on region (usually with iedit)      |
| [iedit](../spacemacs-basics/evil-tools/iedit.md)                            | refactor in current namespace                            |
| [helm-ag](../spacemacs-basics/evil-tools/replacing-text-across-projects.md) | project wide refactor (usually with iedit)               |
| [lisp state](../structural-editing/lisp-state/index.md)                     | A state for smartparens                                  |
| [clojure-mode](./clojure-mode.md)                                           | ++comma++ ++"r"++ for clojure specific refactor commands |
| [Clojure LSP](./clojure-lsp.md)                                             | ++comma++ ++"r"++ for clojure specific refactor commands |


## Clojure REPL based refactoring

Clojure specific refactor commands are in the clojure-mode refactor menu, `, r` provided by the package `clj-refactor`. Many refactor commands require a running Clojure REPL to work.

++comma++ ++"e"++ ++"u"++  `(cider-undef)` when changing a name of a var (`def`, `defn`) to keep the REPL clean of stale names.
