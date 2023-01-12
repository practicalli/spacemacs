# Cider reference

The following section complements the excellent [CIDER documentation](https://docs.cider.mx/) which are highly recommended.


## CIDER configuration variables

Cider behaviour can easily be modified by changing [configuration variables](configuration-variables.md).


## Clojure Fancy Symbols

Set the clojure layer variable `clojure-enable-fancify-symbols` to `t` and anonymous functions, partial functions and sets are represented with Greek-style symbols

```emacs tile="Spacemacs Configuration - dotspacemacs-configuration-layers"
     (clojure :variables
              clojure-enable-fancify-symbols t))
```

!!! WARNING "Fancy symbols can cause confusion"
    Fancy symbols can be an engaging way to write clojure, although they may be an inconvenience especially when demonstrating or pairing on code to other people



## Aligning forms

Automatic aligning of forms works with `clojure-mode` by configuring `aggressive-indent-mode`, however, this seriously conflicts with LSP formatting creating an unworkable editing experience.

To auto-align arguments using clojure-mode, set `lsp-enable-on-type-formatting` to `nil` in the `lsp` layer configuration.  Then add the following configuration in `dotspacemacs/user-config` section of `.spacemacs`

```emacs title="Spacemacs Configuration - dotspacemacs/user-config"
  ;; Indentation of function forms
  ;; https://github.com/clojure-emacs/clojure-mode#indentation-of-function-forms
  (setq clojure-indent-style 'align-arguments)
  ;;
  ;; Vertically align s-expressions
  ;; https://github.com/clojure-emacs/clojure-mode#vertical-alignment
  (setq clojure-align-forms-automatically t)
  ;;
  ;; Auto-indent code automatically
  ;; WARNING - really conflicts with LSP formatting - set lsp-enable-on-type-formatting to nil in lsp layer
  ;; https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
```
