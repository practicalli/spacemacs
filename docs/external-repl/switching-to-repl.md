# Switching to the REPL

> #### Todo::re-write this section
> Update for Clojure CLI tools

`, s a` toggles between a Clojure code file buffer and the REPL buffer, opening the REPL buffer where required.

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

| Keybinding | Description                                        |
|------------|----------------------------------------------------|
| `, s a`    | toggle between source code and REPL buffer         |
| `, s o`    | Switch between CLJ & CLJS REPLs in current project |


## REPL Buffer

The REPL buffer contains a detailed welcome message describing how to use the basics of the REPL.

![Spacemacs Clojure REPL Buffer](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-repl-buffer.png )
