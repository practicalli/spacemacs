# Clojure specific refactor tools

++comma++ ++"r"++ is the refactor menu in Spacemacs which contains commands specific to refactor Clojure code.  These complement the [Evil tools](/spacemacs-basics/evil-tools/) and [structural editing](/structural-editing/)

The default refactor tools are part of the `clojure-mode` package and work even when the REPL is not running. The optional [clj-refactor commands](/refactor/clj-refactor/) mostly require a running REPL to work.


## Refactor menu

| Keybinding                         | Description                                                               |
|------------------------------------|---------------------------------------------------------------------------|
| ++comma++ ++"r"++ ++question++     | Display help on how to enable `clj-refactor` package in the Clojure layer |
| ++comma++ ++"r"++ ++"n"++          | add namespace at top of current buffer                                    |
| ++comma++ ++"r"++ ++n++            | add namespace at current point                                            |
| ++comma++ ++"r"++ ++"#"++          | convert collection to a set `#{}`                                         |
| ++comma++ ++"r"++ ++"c"++          | convert collection to a quoted list                                       |
| ++comma++ ++"r"++ ++open-paren++   | convert collection to a list                                              |
| ++comma++ ++"r"++ ++colon++        | cycle between keyword and string                                          |
| ++comma++ ++"r"++ ++open-bracket++ | convert collection to a vector                                            |
| ++comma++ ++"r"++ ++open-brace++   | convert collection to a hash-map                                          |
| ++comma++ ++"r"++ ++"i"++          | cycle between `if` and `if-not`                                           |
| ++comma++ ++"r"++ ++"p"++          | cycle privacy of vars, `defn`/`defn-` & `def`/`def ^:private**            |

<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode-add.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode-cycle-clean-convert.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode-show-sort-stop.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode-thread.png) -->
<!-- ![Spacemacs Clojure layer - clojure-mode refactor menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-refactor-menu-clojure-mode-unwind-update.png) -->
