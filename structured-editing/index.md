# Structured Editing

One of the benefits of the lisp style syntax of clojure is its very easy to navigate its structure, eg. parenthesis.  You can easily jump between expressions as they are defined unambiguously.

This well defined structure makes it trivial to move expressions around, giving you a simple way to refactor the internals of your code.


## Smartparens - writing structured text

Spacemacs uses [smart parens](https://github.com/Fuco1/smartparens) to help you write structured code really fast and also move expressions around.  Smart parens is a newer implementation of the classic _paredit_ package.

`SPC SPC sp-cheet-sheet` will list all the smartparens commands available.

> **TODO** Check out https://github.com/expez/evil-smartparens as it seems to provide the desired smartparens behaviour for Vim normal mode that I get in Emacs mode.

## Lisp mode - manipulating structured text

Spacemacs includes an Evil **lisp-state**, `SPC k .` for refactoring Lisp base languages like Clojure.  In this **lisp-state** you can use single character commands to move symbols and expressions around without risking unmatched parenthesis or other structure characters.


## Vim Alternatives

Although it is not structural editing, in Vim mode you can delete to a particular character.  So if you wish to delete a form ending in `)` then vim allows you to delete to `)`.

1. Enter **normal** mode
2. Move to the starting point of the text you wish to delete
3. Delete everything up to, but not including the closing parenthesis - `d t )`

>####TODO::Move Vim alternatives to own section
