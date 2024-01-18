# Un-define vars

Keeping the REPL state clean, free from stale var definitions (symbols), minimises the need to restart the REPL process.

`def`, `defn` names can change during development as code is refactored.  Un-define removes unwanted vars and keeps the REPL state clean, avoiding the need to restart the REPL.

`, e u`  (`cider-undef`) un-defines the current function name or var, e.g. `defn`/`def` / `deftest`, removing it from the running REPL.

When cursor is not on a function name or any var, the mini-buffer prompts for the name to undefine.

??? HINT "Cider refresh or restart for multiple changes"
    [Refresh or restart the REPL](/spacemacs/clojure-repl/refresh-restart-repl/) when there are multiple changes made to a namespace or across multiple namespaces.


## Tests

If the name of an existing test is changed, the original test will still run when calling the CIDER test runner commands (or other REPL based test runners).  

Having stale test definitions leads to confusing test results.

`, e u` on a `deftest` expression before changing its name to ensure that the existing test is removed from the REPL state and no longer run.


## REPL buffer

`, undef` in the REPL buffer (Evil Insert / Emacs state) prompts for a symbol to undefine.

`TAB` when typing the symbol name will popup a list of matching symbols available in the REPL.  Select the name you wish to undef

![Spacemacs Clojure REPL undef symbol helm narrowing](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-undef-repl-buffer-light.png?raw=true#only-light)
![Spacemacs Clojure REPL undef symbol helm narrowing](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-undef-repl-buffer-dark.png?raw=true#only-dark)


## Clojure core functions

`ns-unmap` will remove a symbol from the running REPL.  Use `*ns*` dynamic variable to represent the current namespace.

```clojure
(ns-unmap *ns* 'name-before-refactor)
```

Or specify the namespace if the symbol is not in the current namespace

```clojure
(ns-unmap 'practicalli.service 'name-before-refactor)
```

`ns-unalias` will remove an alias added via a require form

```clojure
;; Require a neamespace
(require '[practicalli.service :as service])

;; The service alias should now be in the current nammespace
(ns-aliases *ns*)
;; => {service #namespace[practicalli.service]}

(ns-unalias *ns* 'service)
;; => nil
```

## Clojure tools.namespace

[Clojure tools.namespace.repl](https://clojure.github.io/tools.namespace/#clojure.tools.namespace.repl) provides utilities to manage namespaces.

`refresh` function scans all directories on the classpath for source files, read their ns forms, builds a graph of their dependencies and load them in dependency order. `set-refresh-dirs` defines directories that should be scanned.

Add the library as a dependency to the project file

```clojure
org.clojure/tools.namespace {:mvn/version "1.4.5"}
```

Require the namespace and refer the function 

```clojure
(require '[clojure.tools.namespace.repl :refer [refresh]])
```

Refresh the current namespace

```clojure
(refresh)
```

The refresh function will load all namespaces found and list them as the output.

```clojure
:reloading (com.example.util com.example.app com.example.app-test)
:ok
```

!!! HINT "Set directories to include"
    Use `set-refresh-dirs` to only reload code from specific paths, e.g. `src`, `resources`, `test`.

    `refresh` will not act on namespaces that are defined on other paths, e.g. `dev`, avoiding reloading code for REPL workflows (launching portal, log publishers, etc.)

??? WARNING "All Code must be reloadable"
    If there are errors in one or more namespaces that prevent them from successfully loading, then reresh will error, showing which namespaces had issues to resolve.

    Either refactor the troublesome code or move the code to a path that is not defined by `set-refresh-dirs`.


### refresh in rich comment

Use a rich comment to ensure the refresh function is only called when directly evaluated.

Code inside the rich comment block will not be evaluated when evaluating the current buffer or loading the namespace.

```clojure
(comment

  (require '[clojure.tools.namespace.repl :refer [refresh]])

  (refresh)
)
```

!!! HINT "Custom user namespace"
    Include clojure.tools.namespace.repl in a custom user namespace and call from the REPL prompt or by switching to the `user.clj` file in the editor and calling `refresh`

    [Custom Starup - Reload Namespace: Practicalli Clojure](https://practical.li/clojure/clojure-cli/repl-startup/#reload-namespaces){target=_blank .md-button} 

    [Custom user namespace - Practicalli Project Templates](https://practical.li/clojure/clojure-cli/projects/templates/practicalli/#custom-user-namespace){target=_blank .md-button} 

