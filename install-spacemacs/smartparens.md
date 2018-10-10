# Smartparens

Clojure and other lisp languages are defined as data structures, so expressions always start with parentheses, `( )`.  If there is an imbalance pairing of open and closing parentheses, then the code fails to work and causes an error.

To , [smartparens](https://github.com/Fuco1/smartparens/wiki#getting-started) in strict mode ensures balanced parentheses by adding a closing parentheses when you type an open parentheses.  This works for `()`, `[]`, `{}` and `""`.

## Configure Smartparens

Smartparens is part of the standard distribution of Spacemacs, so no install is necessary.

I recommend enabling smartparens strict mode, so structure cannot be deleted without the content of that structure being deleted first.

Smart closing parentheses means you can jump over closing structure characters by typing `)`

Highlighting all delimiters gives a visual guide to pairs of structural characters, to complement the rainbow parens that also comes with the Clojure layer.


```clojure
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
```
