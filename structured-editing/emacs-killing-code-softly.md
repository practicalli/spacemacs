## Emacs: Killing code softly

> ####TODO::Move to reference section

Emacs contains functions for manipulating lisp that are also useful for Clojure.

`C-M k` deletes text without breaking the structure.  So you can:

* delete a clojure expression (and paste intact elsewhere)
* delete the contents of a string without deleting the double quotes.  The same applies to a list, map or any other structure.


{% youtube %}
https://www.youtube.com/embed/HuufiBXXz14?autoplay=1&loop=1
{% endyoutube %}


| Emacs   | Command       | Description                              |
|---------|---------------|------------------------------------------|
| C-M-k   | kill-sexp     | Kill balanced expression forward         |
| C-M-n   | forward-list  | Move forward  over a parenthetical group |
| C-M-p   | backward-list | Move backward over a parenthetical group |
| C-M-SPC | mark-sexp     | Put the mark at the end of the sexp.     |
