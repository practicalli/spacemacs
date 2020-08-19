# Clojure specific refactor tools
`, r` is the refactor menu in Spacemacs which contains commands specific to refactor Clojure code.  These complement the [Evil tools](/spacemacs-basics/evil-tools/) and [structural editing](/structural-editing/)

The default refactor tools are part of the `clojure-mode` package and work even when the REPL is not running. The optional [clj-refactor commands](/refactor/clj-refactor/) mostly require a running REPL to work.


## Refactor menu

| Keybinding | Description                                                               |
|------------|---------------------------------------------------------------------------|
| `, r ?`    | Display help on how to enable `clj-refactor` package in the Clojure layer |
| `, r a n`  | add namespace at top of current buffer                                    |
| `, r a N`  | add namespace at current point                                            |
| `, r c #`  | convert collection to a set `#{}`                                         |
| `, r c '`  | convert collection to a quoted list                                       |
| `, r (`    | convert collection to a list                                              |
| `, r :`    | cycle between keyword and string                                          |
| `, r [`    | convert collection to a vector                                            |
| `, r {`    | convert collection to a hash-map                                          |
| `, r i`    | cycle between `if` and `if-not`                                           |
| `, r p`    | cycle privacy of vars, `defn`/`defn-` & `def`/`def ^:private**            |

<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode-add.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode-cycle-clean-convert.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode-show-sort-stop.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode-thread.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](/images/spacemacs-clojure-refactor-menu-clojure-mode-unwind-update.png) -->
