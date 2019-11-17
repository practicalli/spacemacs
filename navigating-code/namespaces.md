# Navigating Clojure Namespaces

Browse or find a namespace in the current project

| Keybindings | Description                       |
|-------------|-----------------------------------|
| `, h n`     | Browse namespace contents         |
| `, h N`     | Browse all namespaces content     |
| `, g n`     | Find file for the given namespace |

Browse namespaces allows you to navigate through just the definitions in a namespace (`def`, `defn`) and view their documentation (doc strings).

![Clojure - Namespaces - browse-ns](/images/spacemacs-clojure-namespace-browse-ns.png)

> #### TODO::Confirm function operation
> Find namespace will open the file for a selected namespace


## REPL buffer cider commands

`,` in Evil insert mode in the REPL buffer will bring up the REPL command menu

| Command     | Description                                  |
|-------------|----------------------------------------------|
| `browse-ns` | Browse namespace                             |
| `ns`        | Switch to namespace (lists known namespaces) |


![Clojure REPL commands - namespace](/images/spacemacs-clojure-repl-command-ns.png)

## Using code to change the namespace

[`in-ns`](https://clojuredocs.org/clojure.core/in-ns) function will set the namespace for the REPL.  If that namespace does not exist, then the namespace is created in the current REPL.

![Clojure REPL - change namespace](/images/spacemacs-clojure-repl-change-namespace-spacemacs-workshop.png)
