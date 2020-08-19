# Clojure Repl
The Clojure REPL is a live environment in which your Clojure code runs.  Using a REPL to develop your code gives you instant feedback on its behaviour and supports rapidly evolving design.

Clojure developers can use the REPL to evaluate (run) a whole file of code, or just a single expression.

![Clojure aware editors](https://raw.githubusercontent.com/jr0cket/developer-guides/master/clojure/clojure-repl-driven-development-clojure-aware-editor.png)


## Quick start (Vim normal state)
`SPC f f` open a Clojure source code file from a project

`, '` or `, s i` to start a Clojure REPL using [Clojure CLI](http://practicalli.github.io/clojure/clojure-tools/install/install-clojure.html), Leiningen or Boot.

`, e f` evaluate the current Clojure expression and show the results inline

`, e ;` evaluate the current Clojure expression and show the results as a comment

`SPC p a` toggle between matching source code and unit test buffers

`, e b` evaluate all code from the current buffer within the REPL

`, t a` run all test functions in the REPL using the cider test runner

`, m q r` to restart the REPL (i.e. when adding a library as a dependency to the project)


<!-- TODO: add a specific screencast on using the basics of the REPL -->
<!-- {% youtube %} -->
<!-- https://www.youtube.com/watch?v=KZjFVdU8VLI?autoplay=1loop=1 -->
<!-- {% endyoutube %} -->
