# Navigating Clojure Namespaces

`, g n` (`cider-find-ns`) lists the namespaces currently loaded into the running REPL.  Type a pattern to narrow the list.  `C-j` and `C-k` to navigate the list.  `RET` to open the namespace in the current buffer.

![Spacemacs Clojure - Cider find namespace](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-find-ns.png)

## Namespaces via Projectile

`SPC p f` (`helm-projectile-find-file`) is an effective way to switch between files in the project.  Helm uses fuzzy matching, so `_` characters can be skipped when narrowing the helm list with a pattern, so searching for a file is the same as searching for a namespace.

> `g g` jumps to the top of the file, which should be near to the location of the `ns` form


## LSP symbols and ns definitions

`, g s` (`helm-lsp-workspace-symbols`) lists all the symbols found in the current project, including `ns`, `def` and `defn` forms.

Type in a pattern to narrow the list. `C-j` and `C-k` to navigate the list.

`RET` to jump to the symbol, opening the relevant namespace in the current buffer.

![Spacemacs Helm LSP workspace symbols - navigate to symbols across a project](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-helm-lsp-workspace-symbols.png)


## Browse namespace symbol documentation

Browse namespace symbols by navigating through the definitions in a namespace (`def`, `defn`) and view their documentation (doc strings).

`, h n` (`cider-browse-ns`) lists all namespaces loaded into the REPL in the current project.  Namespaces in the project that have not been evaluated, directly or via a require, will not be in the list.

![Clojure - Namespaces - browse-ns](/spacemacs/images/spacemacs-clojure-namespace-browse-ns.png)

`RET` to show the symbols in the namespace

`RET` on a namespace symbol to see the documention in a pop-up wondow.  Use the link to the source code file in the documentation to open the namespace in the buffer.


## REPL buffer cider commands

`,` in Evil insert mode in the REPL buffer will bring up the REPL command menu

| Command     | Description                                  |
|-------------|----------------------------------------------|
| `browse-ns` | Browse namespace                             |
| `ns`        | Switch to namespace (lists known namespaces) |

![Clojure REPL commands - namespace](/spacemacs/images/spacemacs-clojure-repl-command-ns.png)


### Using code to change the namespace

[`in-ns`](https://clojuredocs.org/clojure.core/in-ns) function will set the namespace for the REPL.  If that namespace does not exist, then the namespace is created in the current REPL.

![Clojure REPL - change namespace](/spacemacs/images/spacemacs-clojure-repl-change-namespace-spacemacs-workshop.png)
