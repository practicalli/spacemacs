# Clojure Repl

Clojure developers always code with a running REPL.

The Clojure REPL is a live environment in which your Clojure code runs.  Using a REPL to develop your code gives you instant feedback on its behaviour and supports rapidly evolving design.

Clojure developers can use the REPL to run a whole file of code, or just a single expression


{% youtube %}
https://www.youtube.com/watch?v=KZjFVdU8VLI?autoplay=1loop=1
{% endyoutube %}


## Quick start (Vim normal state)

`, '` or `, s i` to start a REPL from a Clojure code file, `*.clj`.

`. e e` to evaluate the previous Clojure expression

`, e f` to show the results of evaluating the current Clojure expression


## REPL keybindings

| Vim Normal       | Command                      |
|------------------|------------------------------|
| `, '` or `, s i` | cider-jack-in                |
| `, "` or `, s I` | cider-jack-in-clojurescript  |
| `, s s`          | switch between repl and code |
| `, s q`          | cider-quit                   |

> #### Hint:: Clojure REPL tools
> `M-x cider-repl-require-repl-utils` adds the REPL utility functions
> `apropos`, `dir`, `dir-fn`, `doc`, `find-doc` and `source` into the current REPL namespace.
>
> These REPL utility functions are included in the `user` namespace by default.
> See the [`clojure.repl` api documentation](https://clojure.github.io/clojure/clojure.repl-api.html) for full details
