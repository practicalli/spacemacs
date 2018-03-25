# Switching to the REPL

Although a REPL buffer is created it is not displayed by default.

> My typical workflow is to evaluate functions and expressions within the Clojure code buffer itself.


| Spacemacs     | Major mode    | Emacs     | Evil      | Command                               | Description                                                     |
|---------------|---------------|-----------|-----------|---------------------------------------|-----------------------------------------------------------------|
| `SPC m s s`   | `M-RET s s`   | `C-c C-z` | `, s s`   | `cider-switch-to-repl-buffer`         | Switch to REPL buffers (when in a code buffer)                  |
| `SPC m s s`   | `M-RET s s`   | `C-c C-z` | `, s s`   | `cider-switch-to-last-clojure-buffer` | Switch to last active Clojure code buffer (when in REPL buffer) |
| `SPC m s S` * | `M-RET s S` * | `C-c M-n` | `, s S` * | `cider-repl-set-ns`                   | * Proposed change: Select a namespace and switch to it.         |
| `SPC m s o`   | `M-RET s o`   | `C-c M-o` | `, s o`   | `cider-repl-switch-to-other`          | Switch between CLJ & CLJS REPLs in current project              |

> * I've proposed a change to create a new menu entry for switching the repl to the current namespace of the code buffer, `cider-repl-set-ns`: S - cider-repl-set-ns


## Switching between Code & REPL

You can toggle between a Clojure code buffer and a REPL buffer with `M-RET s s`.  As this is the same binding for both switching to a REPL and switching to the last code buffer, this enables you to toggle between the two quickly.

The Emacs keybinding


## Select the REPL namespace

When in a Clojure code buffer you can switch the namespace of the REPL using `cider-repl-set-ns`.

With the REPL buffer active,  `cider-repl-set-ns` will display a pop-up buffer and list all the available namespaces.
