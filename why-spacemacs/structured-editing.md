# Why Spacemacs: Structured Editing

Structured editing is an invaluable tool when working with Lisp languages (elsip, lisp, clojure, etc) as it enables you to easily move code around without breaking the structural syntax of the language.

Clojure has very precise syntax as everything is contained in a list or similar structure.  It is very simple to navigate the structure of Clojure code by jumping from expression to expression.

This well defined structure also makes it trivial to move expressions around, giving you a simple way to develop and refactor your code.

> ####TODO::Add animated gifs / videos to show these features

## Writing Structured Text

Spacemacs uses [smartparens](https://github.com/Fuco1/smartparens) to help you write structured code really fast and also move expressions around.  Smartparens is a newer implementation of the classic _paredit_ package.

> **TODO** Check out https://github.com/expez/evil-smartparens as it seems to provide the desired smartparens behaviour for Vim normal mode that I get in Emacs mode.

## Manipulating Structured Text

Spacemacs includes an Evil **lisp-state**, `SPC k .` for refactoring Lisp base languages like Clojure.  In this **lisp-state** you can use single character commands to move symbols and expressions around without risking unmatched parenthesis or other structure characters.

> ####Hint::Structured Editing Section
> Read the [Structured editing section](/structured-editing/) for a detailed guide to using Lisp mode, Smartparens, Paredit and Evil mode to manage your Clojure (and elsip) code.
>
> Evil mode (vim) also has general editing features that can help you work with Clojure code without breaking the structure.
