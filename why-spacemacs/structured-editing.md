# Structural Editing

Structural editing is an invaluable tool when working with Lisp languages (elisp, lisp, clojure, etc) as it enables you to easily move code around without breaking the structural syntax of the language.

Clojure has very precise syntax as everything is contained in a list or similar structure.  It is very simple to navigate the structure of Clojure code by jumping from expression to expression.

This well defined structure also makes it trivial to move expressions around, giving you a simple way to develop and refactor your code.

{% youtube %}
https://www.youtube.com/watch?v=PmSPKvlJk74
{% endyoutube %}

> ####Hint::Structural Editing Section
> Read the [Structural editing section](/structural-editing/) for a detailed guide to using Lisp mode, Smartparens, Paredit and Evil mode to manage your Clojure (and elsip) code.


## Smartparents For Writing Structural Text

Spacemacs uses [smartparens](https://github.com/Fuco1/smartparens) to help you write structural code really fast and also move expressions around.  Smartparens is a newer implementation of the classic _paredit_ package.

> ####HINT::Evil-cleverparens
> [Evil-cleverparens](https://github.com/luxbock/evil-cleverparens) configures Vim states to respect smartparens rules. This ensures that you do not accidentally delete parenthesis and keeps the structure of your Clojure intact.
>
> See the section on [Evil Clojure Editing](/install-spacemacs/evil-structural-editing.html).

## Lisp State For Manipulating Structural Text

Spacemacs includes **lisp-state**, `SPC k .` for refactoring Lisp base languages like Clojure.  In this **lisp-state** you can use the normal Vim keys to navigate your code by its structure.  You can also move symbols and expressions around without risking unmatched parenthesis or other structure characters (using `slurp`, `barf`, `wrap`, `unwrap`, etc.).
