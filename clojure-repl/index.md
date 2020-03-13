# Clojure Repl

Clojure developers always code with a running REPL.

The Clojure REPL is a live environment in which your Clojure code runs.  Using a REPL to develop your code gives you instant feedback on its behaviour and supports rapidly evolving design.

Clojure developers can use the REPL to run a whole file of code, or just a single expression


## Quick start (Vim normal state)

In any clojure buffer:

`, '` or `, s i` to start a REPL

In a source code buffer:

`, e f` evaluate the current Clojure expression and show the results inline

`, e ;` evaluate the current Clojure expression and show the results as a comment

In a test code buffer:

`, e b` evaluates all test code, making tests available in the REPL.

`, t a` runs all tests


{% youtube %}
https://www.youtube.com/watch?v=KZjFVdU8VLI?autoplay=1loop=1
{% endyoutube %}
