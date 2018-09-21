# Clojure Repl

The Clojure REPL is a live environment in which your Clojure code runs.  Using a REPL to develop your code gives you instant feedback on its behaviour and supports rapidly evolving design.

Clojure developers can use the REPL to run a whole file of code, or just a single expression

Clojure developers always code with a REPL.

{% youtube %}
https://www.youtube.com/watch?v=KZjFVdU8VLI?autoplay=1loop=1
{% endyoutube %}


## Quick start (Vim normal state)

`, '` or `, s i` to start a REPL from a Clojure code file, `*.clj`.

`. e e` to evaluate the previous Clojure expression

`, e f` to show the results of evaluating the current Clojure expression


## REPL keybindings

| Spacemacs   | Major mode  | Emacs     | Vim Normal       | Command                      |
|-------------|-------------|-----------|------------------|------------------------------|
| `SPC m s i` | `M-RET s i` | `C-c M-j` | `, '` or `, s i` | cider-jack-in                |
| `SPC m s I` | `M-RET s I` |           | `, "` or `, s I` | cider-jack-in-clojurescript  |
| `SPC m s s` | `M-RET s s` | `C-c C-z` | `, s s`          | switch between repl and code |
| `SPC m s q` | `M-RET s q` | `C-c C-q` | `, s q`          | cider-quit                   |


This section contains more information on running REPL's
