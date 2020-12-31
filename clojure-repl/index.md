# Clojure Repl
The Clojure REPL is a live environment in which your Clojure code runs.  Using a REPL to develop your code gives you instant feedback on its behaviour and supports a rapidly evolving design. Clojure developers use the REPL to evaluate (run) a whole file of code or just a single expression.

All Clojure editors connect to an external REPL process, either connecting to an externally started REPL or starting the REPL from the editor.

| Approaches                    | Description                                                                                                        |
|-------------------------------|--------------------------------------------------------------------------------------------------------------------|
| [connect](connect-to-repl.md) | flexible and robust approach supporting rich configurations, starting an external REPL via a command line terminal |
| [jack-in](jack-in-to-repl.md) | start an external REPL from the editor, injecting editor specific configuration and then connecting                |

> Practicalli recommends using the [connect](connect-to-repl.md) approach for all but the most simplest of workflows

![Clojure aware editors](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-repl-terminal-editor.png)


## Quick start
Open or select a Clojure buffer, this can be an `.edn`, `.clj`, `.cljc` or `.cljs` file.

| Key bindings       | Description                                  |
|--------------------|----------------------------------------------|
| `, '` or `SPC m s` | `sesman-start` to start or connect to a REPL |

Select from one of the following types of REPL's
* `cider-connect-clj` and `cider-jack-in-clj` for Clojure on the JVM
* `cider-connect-cljs` and `cider-jack-in-cljs` for a ClojureScript REPL
* `cider-jack-in-clj&cljs` to start a REPL of both types (full stack)

Once the REPL starts, [evaluate expressions using the source code buffer](/evaluating-clojure/).


## REPL cheatsheet
`SPC f f` open a Clojure source code file from a project

`, '` to start a Clojure REPL using [Clojure CLI](http://practicalli.github.io/clojure/clojure-tools/install/install-clojure.html), Leiningen or Boot.

`, e f` evaluate the current Clojure expression and show the results inline

`, e ;` evaluate the current Clojure expression and show the results as a comment

`SPC p a` toggle between matching source code and unit test buffers

`, e b` evaluate all code from the current buffer within the REPL

`, t a` run all test functions in the REPL using the cider test runner

`, m q r` to restart the REPL (i.e. when adding a library as a dependency to the project)


> #### Hint::Documentation enabled after evaluating a namespace
> `, h h` shows the documentation for a function under the cursor, but only if a namespace has been evaluated first.  This applies to `clojure.core` functions as well as project and library specific functions.
