# Clojure Repl

The Clojure REPL is the live execution environment in which your Clojure code runs.  Having a REPL connected during development of your code gives you instant feedback on its behaviour.  Clojure developers always code with a REPL. 

![Spacemacs Clojure REPL Start Up](/images/spacemacs-clojure-project-repl-start-up.gif)

## Quick start

You can run a Clojure REPL from Emacs or connect to an existing REPL (ie. run from a command line).

To run a Clojure or Clojurescript REPL:

| Spacemacs   | Major mode  | Emacs     | Evil    | Command                      |
|-------------|-------------|-----------|---------|------------------------------|
| `SPC m s i` | `M-RET s i` | `C-c M-j` | `, s i` | cider-jack-in                |
| `SPC m s I` | `M-RET s I` |           | `, s I` | cider-jack-in-clojurescript  |
| `SPC m s s` | `M-RET s s` | `C-c C-z` | `, s s` | switch between repl and code |
| `SPC m s q` | `M-RET s q` | `C-c C-q` | `, s q` | cider-quit                   |

There are shortcut versions of the following keybindings, as these commands are called so often.

* **SPC m '** - for a Clojure REPL
* **SPC m "** - for a Clojurescript REPL

This section contains more information on running REPL's

## Example of running REPL

![Spacemacs Clojure REPL Buffer](/images/spacemacs-clojure-cider-repl-buffer.png ) 
