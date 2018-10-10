# Smartparens - Writing structured text

Spacemacs uses [Smartparens](https://github.com/Fuco1/smartparens) to help you write structured code really fast and also move expressions around.  Smart parens is a newer implementation of the classic _paredit_ package.

> **Hint** Take a look at the [smart parens](https://github.com/Fuco1/smartparens) readme file for instructions on how to use Smartparens (I will incorporate that information in this workshop at a later date).

## Balanced parens & other characters

smartparens keeps your parenthesis in balance by automatically creating a closing paren when you type an open paren.

This also happens for other character delimiters, such as [] for vectors, {} for maps and "" for strings.

With strict mode on, then you are unable to delete any of these delimiters until they are empty.  For example I could not delete any paren of the following expression until I delete the content of the expression `(def brackets "They are the best")`

I would have to delete the contents of this def expression before I could remove the open or close paren.

<p align="center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/lLo72SxtrWw" frameborder="0" allowfullscreen></iframe>
</p>

## Commands Highlights

Smartparens package provides additional functions for navigating and manipulating strictly balanced expressions. Here’s a short list of some mentioned on this page, all of them (and the rest) are described in the readme file on github page.

| Spacemacs | Emacs | Command               |
|-----------|-------|-----------------------|
|           | C-M-f | sp-forward-sexp       |
|           | C-M-b | sp-backward-sexp      |
|           | C-M-d | sp-down-sexp          |
|           | C-M-a | sp-backward-down-sexp |
|           | C-M-e | sp-up-sexp            |
|           | C-M-u | sp-backward-up-sexp   |
|           | C-M-n | sp-next-sexp          |
|           | C-M-p | sp-previous-sexp      |



## Smartparens and symbol balancing/highlighting

> ####TODO::Refactor this section

Smartparents helps speed up typing and reducing errors due to unmatched symbols.  For most symbols in most modes when you type an opening parenthesis then a matching  is created.

So if you type `(` then a matching `)` is created too.


If you want to surround some existing text with a symbol pair, then simply highlight the text and press the opening symbol (Evil Insert mode or Holy mode).

A closing symbol is also highlighted when the cursor is at the opening symbol.

Spacemacs also highlights the surrounding symbols, including any parents.  So if you are in a nested list, `(parent code (nested code))`, then if the cursor is on the nested code, both nested & parent symbols are highlighted.


## Jump to end of expression (Vim insert mode)

Use `)` to jump to the end of an expression or any other delimiter

`C-q` temporarily disables this feature, allowing a `)` to be entered

`dotspacemacs-smart-closing-parenthesis` in `.spacemacs` controls this feature, set this to `nil` to switch it off.

```
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
```



## Disable / temporarily skip using Smartparens


| Spacemacs | Emacs | Command               |
|-----------|-------|-----------------------|
|           | C-M-f | sp-forward-sexp       |
|           | C-M-b | sp-backward-sexp      |
|           | C-M-d | sp-down-sexp          |
|           | C-M-a | sp-backward-down-sexp |
|           | C-M-e | sp-up-sexp            |
|           | C-M-u | sp-backward-up-sexp   |
|           | C-M-n | sp-next-sexp          |
|           | C-M-p | sp-previous-sexp      |
