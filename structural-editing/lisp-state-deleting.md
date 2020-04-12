# Deleting symbols, words & expressions

In lisp-state you can easily delete symbols, words and expressions without deleting the structures they are in (unless that structure is empty).

Delete a symbol, word or expression using the `d` menu

| lisp-state | Description                   |
|------------|-------------------------------|
| `d s`      | delete the current symbol     |
| `d w`      | delete the current word       |
| `d x`      | delete the current expression |

> **TODO** Video of deleting symbols, words and expressions.
> Indicate what is classed as a symbol word or expression.

------------------------------------------

> ####HINT::Evil-CleverParens
> Enabling [evil-cleverparens](/install-spacemacs/evil-structural-editing.html) makes Vim editing respect structural editing.  For example, using `d d` will delete a line within a function without unbalancing the outer parenthesis.  In fact, the closing parenthesis will be pulled up to the preceding line, keeping the correct formatting for the Clojure code.
