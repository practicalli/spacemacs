# Switching to the REPL

`, s s` toggles between a Clojure code file buffer and the REPL buffer, opening the REPL buffer where required.

`, s n` evaluates the namespace of the current Clojure file in the REPL, changing the REPL to be in that namespace.


> ####Hint::To REPL buffer or not to REPL buffer
> Many developers simply evaluate functions and expressions within the Clojure code buffer itself.
>
> A REPL buffer is very useful for showing larger results from evaluating code and any side effect information such as logging and debugging.


## Select the REPL namespace

`SPC SPC cider-repl-set-ns` displays a pop-up buffer of all the available namespaces.

A running REPL is required.


> ####Hint::The `user` namespace
> When starting a REPL the default namespace is called `user`.  This namespace contains the `clojure.repl` library allowing you to call functions useful for development, such as `(doc ,,,)`, `(source ,,,)`, etc.
>
> To use the `doc` and `source` tools, you can stay in the `user` namespace and use `require` function to include your own code in the `user` namespace.  For example:
>
```clojure
(require 'my-custom-code.core)
(require '[my-custom-code-time :as time])
```

## Setting the default REPL namespace

Set the namespace used when starting the REPL in the `project.clj` file by adding `:init-ns` to the `:repl-options`

```clojure
:repl-options {:init-ns the-default.namespace}

```


## Keybindings

| Vim Normal | Major mode    | Command                               | Description                                                     |
|------------|---------------|---------------------------------------|-----------------------------------------------------------------|
| `, s s`    | `M-RET s s`   | `cider-switch-to-repl-buffer`         | Switch to REPL buffers (when in a code buffer)                  |
| `, s s`    | `M-RET s s`   | `cider-switch-to-last-clojure-buffer` | Switch to last active Clojure code buffer (when in REPL buffer) |
| `, s S` *  | `M-RET s S` * | `cider-repl-set-ns`                   | * Proposed change: Select a namespace and switch to it.         |
| `, s o`    | `M-RET s o`   | `cider-repl-switch-to-other`          | Switch between CLJ & CLJS REPLs in current project              |

> * I've proposed a change to create a new menu entry for switching the repl to the current namespace of the code buffer, `cider-repl-set-ns`: S - cider-repl-set-ns


## REPL Buffer

The REPL buffer contains a detailed welcome message describing how to use the basics of the REPL.

> ####HINT::Switch to Vim insert state to write code in the REPL

![Spacemacs Clojure REPL Buffer](/images/spacemacs-clojure-cider-repl-buffer.png )
