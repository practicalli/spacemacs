# Structural Editing

An invaluable tool to ensure the correctness of structure (parens) for Lisp languages (elisp, lisp, clojure, etc)

Code can be created and manipulated without breaking the structural syntax of the language, providing an effective way to refactor code.

Navigate the structure of Clojure code by jumping from expression to expression and form to form.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/PmSPKvlJk74?start=433" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>

!!! HINT "Structural Editing Section"
   [Structural editing section](/spacemacs/structural-editing/) provides a detailed guide to using Lisp mode, Smartparens, Paredit and Evil mode to manage your Clojure (and elsip) code.


## Smartparens

Spacemacs uses [smartparens](https://github.com/Fuco1/smartparens){target=_blank} to help you write structural code really fast and also move expressions around. Smartparens is a newer implementation of the classic _paredit_ package.

!!! HINT "Evil-cleverparens"
    [Evil-cleverparens](https://github.com/luxbock/evil-cleverparens){target=_blank} configures Vim states to respect smartparens rules. This ensures that you do not accidentally delete parenthesis and keeps the structure of your Clojure intact.

  See the section on [Evil Clojure Editing](../../install-spacemacs/enhance-clojure-experience/evil-structural-editing.md).

## Lisp State For Manipulating Structural Text

++spc+"k"+period++ opens **lisp-state** for refactoring Lisp base languages like Clojure and eLisp.

**lisp-state** allows use of the Vim normal state keys to navigate your code by its structure, ++"j"++,++"k"++,++"h"++,++"l"++.

Move symbols and expressions around without breaking parenthesis and other structural characters (using `slurp`, `barf`, `wrap`, `unwrap`, etc.).
