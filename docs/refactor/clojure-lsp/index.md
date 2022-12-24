# Clojure LSP Refactor

++comma++ ++"r"++ opens Clojure LSP refactor menu

![Clojure Refactor menu with Clojure LSP refactor menu - light](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-refactor-clojure-lsp-menu-light.png#only-light)
![Clojure Refactor menu with Clojure LSP refactor menu - dark](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-refactor-clojure-lsp-menu-dark.png#only-dark)


## Refactor namespace

++comma++  ++"r"++++"r"++  (`lsp-rename`) with the cursor on a namespace will prompt for changes to that namespace.

++enter++ to save the change to the namespace, updating

* `ns`namespace definition name
* file name of the current file, including converting `-` to `_` in the file name where relevant
* all reference to the changed namespace name across all source code files in the project (on the class path)
