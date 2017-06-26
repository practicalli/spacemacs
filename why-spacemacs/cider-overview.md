# CIDER Overview

> **Fixme** work in progress

CIDER is an amazing tool for developing Clojure in Emacs, supporting REPL driven development.

By adding the Clojure layer to spacemacs you get the latest version of CIDER.

[![CIDER logo](https://raw.githubusercontent.com/clojure-emacs/cider/master/logo/cider-logo-w640.png)](https://github.com/clojure-emacs/cider)

# What is CIDER

  [CIDER](https://github.com/clojure-emacs/cider) is the Clojure IDE and REPL for Emacs.  It is built on top of nREPL, the network protocol that connects to a Clojure REPL and replaces the direct use of nREPL in Emacs.

  CIDER includes the standard interactive code evaluation developers are used to.  There are also many other features that I want to explore further, including error and warning highlighting, human-friendly stacktraces, smart code completion, definition & documentation lookup, value inspector & function tracing, interactive macroexpansion, [Grimoire](http://conj.io/) integration, `clojure.test` integration, classpath browser, namespace browser, nREPL session management, scratchpad, minibuffer code evaluation, integration with [company-mode](http://company-mode.github.io/) and [auto-complete-mode](https://github.com/clojure-emacs/ac-cider)


## Leiningen configuration - now automated

  CIDER requires the `[cider/cider-nrepl "0.8.1"]` Leiningen plugin, which helps establish an [nREPL middleware](https://github.com/clojure-emacs/cider-nrepl) connection Spacemacs and Leiningen when you run `M-x cider-jack-in` or `M-x cider-connect`.
  
  Since version 0.11.0 of CIDER, the cider-nrepl plugin is automatically injected when starting or first connecting to a Clojure REPL.  So no specific configuration is required.
  
  Spacemacs will always use the latest version of the cider-nrepl plugin (assuming you update Spacemacs when it has a new release).
  
> **Hint** In versions of CIDER earlier than 0.11, it was required to add the cider-nrepl plugin to either your project.clj file or to the Leiningen `~/.lein/plugings.clj` file.  As CIDER now adds this plugin when you run 


# Running a Clojure REPL 

  Either create a new Clojure project using `lein new my-project-name` or open an existing project in Spacemacs (either the `project.clj` file or a `.clj` file from anywhere in the project).
  
  With an active Clojure buffer you can use one of the following keybindings or command
  
  
| Spacemacs   | Major mode  | Emacs     | Command                           | Description              |
|-------------|-------------|-----------|-----------------------------------|--------------------------|
| `SPC m s i` | `M-RET s i` | `C-c M-j` | `M-x cider-jack-in`               | Start Clojure repl       |
| `SPC m s I` | `M-RET s I` |           | `M-x cider-jack-in-clojurescript` | Start Clojurescript repl |

![Emacs Live - CIDER jack in - C-c M-j](/images/emacs-cider-started.png)


## Connecting to an existing Clojure REPL

Instead of starting a new Clojure REPL you can connect to a REPL that is already running, for example via `lein repl` on the command line. 

| `M-RET s c` | helm nemonic keybinding |
| `C-c M-c`   | CIDER mode keybindings  |
| `M-x cider` | command                 |

You will be prompted for the connection details of the running repl, ie. host, port.  Unless you have changed your project configuration these values should be the default values given.


## Using CIDER in Emacs

  There are a number of [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts) already defined, here are some of the most common ones I use:

* `C-c C-e` - evaluates the previous form to the current position of the cursor and shows the result in the minibuffer and inline with the code (until you move the cursor away).  So place your cursor after the closing parentheses `)` of your expression or on the next line and hit the keybinding and see the result.

* `C-c M-;` - evaluates previous form and prints the result as a comment on the following line.  The keybinding `M-;` is a universal comment in all modes.  With C-c as a prefix it evaluate the previous function before creating a comment of the return value.

![Emacs Live - CIDER eval form with result in minibuffer - C-c C-e](/images/emacs-cider-eval-expression-minibuffer.png)

* `C-c M-e` - the same as above except the result is sent to the REPL

![Emacs Live - CIDER eval form with result in the REPL - C-c M-e](/images/emacs-cider-eval-expression-repl.png)

* `C-c C-k` - evaluate the whole buffer.  So with the cursor in a Clojure source file, all the forms / expressions are evaluate as if the code was loaded in from scratch.

* `C-c C-d d` - show the documentaion as you would with `(doc function-name)`.  Place the cursor over a function name, hit the keybinding and see the documenation for that funtion.  This also works inside the REPL buffer, so no need to use `(doc)`, which is not loaded by default. 

* `C-c M-n` - switch to namespace of current Clojure buffer.  So with the cursor in a Clojure source file, hit the keybinding and your REPL buffer will now be in the namespace for that Clojure code.

![Emacs Live - CIDER change to namespace of current Clojure code - C-c M-n](/images/emacs-cider-namespace-change.png)

> Changing into a namespace does not automatically evaluate the code in that namespace, so evaluate the whole buffer `C-c C-k` or evaluate specific expressions (forms) `C-c M-e`.  Once evaluated, you can evaluate that code in the REPL.

* `M->` or `M-x cider-jump-to-var` prompts you for a var, a function `(defn)` or symbol name `(def)` and moves the cursor to its definition.  If the cusor is already on a matching name the the cursor jumps straight to that definition.

* `C-c C-q` or `M-x cider-quit` - close the REPL and its associated buffer.
 
  There are many more things you can do within Clojure files and the REPL, so take a look at the [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts) once you have the basics mastered.


## Further reading 

  Some further reading around CIDER:

* [CIDER docs](https://cider.readthedocs.io/en/latest/) for comprehensive details
* [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts)
* [Clojure on Emacs - A CIDER workflow hack](http://blog.jenkster.com/2013/12/a-cider-excursion.html) - Kris Jenkins
