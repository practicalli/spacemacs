# Clojure REPL

The Clojure REPL is a live environment in which Clojure code runs, it is the same process for both development and production.

A REPL user interface (UI), a prompt or Clojure editor, provides instant feedback when code is evaluated. Any amount of code can be evaluated, from a single expression to multiple namespaces.

Expressions such as function definitions can be re-evaluated, changing how the system behaves without having to restart anything.

The REPL provides the Clojure developer a fast and effective tool for developing the right data models and algorithms that define the system.

![Clojure aware editors](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-repl-terminal-editor.png)


## Editor Connected REPL

All Clojure editors connect to an external run REPL process, either connecting to an existing process (connect) or starting a new process from the editor (jack-in).

| Approaches                 | Description                                                                                                                  |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------|
| [connect](connect-to-repl) | connecting to a local or remote REPL process - robust approach supporting rich REPL startup configurations and collaboration |
| [jack-in](jack-in-to-repl) | start an external REPL from the editor, injecting editor specific configuration and then connecting                          |



## Quick start

Open or select a Clojure buffer, an `.edn`, `.clj`, `.cljc` or `.cljs` file.

| Key bindings                                            | Description                                       |
|---------------------------------------------------------|---------------------------------------------------|
| ++comma++ ++single-quote++ or ++comma++ ++"m"++ ++"s"++ | `sesman-start` menu to start or connect to a REPL |

Select from one of the following types of REPL's
* `cider-connect-clj` and `cider-jack-in-clj` for Clojure on the JVM
* `cider-connect-cljs` and `cider-jack-in-cljs` for a ClojureScript REPL
* `cider-jack-in-clj&cljs` to start a REPL of both types (full stack)

Once the REPL starts, [evaluate expressions using the source code buffer](/evaluating-clojure/).

!!! HINT "Eval namespace or buffer to load Clojure into CIDER"
    ++comma++ ++"e"++ ++"b"++ to evaluate the current buffer and load Clojure core into CIDER, making the documentation and other Cider tools fully operational.  Or evaluate any valid `ns` form in the project.


## CIDER workflow overview

++spc++ ++"p"++ ++"f"++ open a file from the current project (++spc++ ++"f"++ ++"f"++  if not in a project)

++comma++ ++single-quote++ or ++comma++ ++"m"++ ++"s"++ and start a Clojure REPL using `cider-jack-in-clj` (may take a few seconds if there are dependencies to download)

++comma++ ++"e"++ ++"b"++ evaluate the current buffer (also loads Clojure core into CIDER)

++comma++ ++"e"++ ++"f"++ evaluate the current top-level expression and show the result inline

++comma++ ++"e"++ ++"e"++ evaluate the previous expression and show the result inline (useful for nested expressions)

++comma++ ++"e"++ ++semi-colon++ evaluate the current Clojure expression and print the result as a comment

++comma++ ++"e"++ ++"f"++ evaluate the current top-level expression and pretty-print the result in a separate buffer

++spc++ ++"p"++ ++"a"++ toggle between matching source code and unit test buffers

++comma++ ++"t"++ ++"a"++ run all test functions in the REPL using the cider test runner (evaluate changed test & source code first)

++comma++ ++"m"++ ++"q"++ ++"r"++ to restart the REPL (i.e. after adding a library as a dependency to the project)


!!! HINT "Documentation enabled after evaluating a namespace"
    ++comma++ ++"h"++ ++"h"++  shows the documentation for a function under the cursor, but only if a namespace has been evaluated first.  This applies to `clojure.core` functions as well as project and library specific functions.
