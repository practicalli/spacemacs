# Linting with Kondo

An opinionated linter and static code analyser which will lint your code with or without a running REPL.

> #### Hint::Project install guide
> [Spacemacs specific install instructions](https://github.com/borkdude/clj-kondo/blob/master/doc/editor-integration.md#spacemacs) from the clj-kondo project

clj-kondo works as soon as you have installed it.  Open any Clojure file (`.clj`, `.cljs`, `.cljc`, `.edn`) and start typing.

If any errors are detected by the linter, a red dot appears in the margin showing the line.  A red underscore shows where on the line the issue is.  Moving the cursor to that red underscore will show a pop-up describing the error.

The total number of errors and warnings are show in in the Space bar.


> #### TODO::Add spacemacs specific images


## Requirements

1. `syntax-checking` is present in `dotspacemacs-configuration-layers`.
2. `clj-kondo` is available on PATH (see [clj-kondo install instructions](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md)).


## Only clj-kondo as the linter

`SPC f e d` to edit the `.spacemacs` file:

1. In `dotspacemacs-additional-packages` add `flycheck-clj-kondo`.
2. In the `dotspacemacs/user-config` function add the following:

   ``` elisp
   (use-package clojure-mode
    :ensure t
    :config
    (require 'flycheck-clj-kondo))
   ```

`SPC q r` to restart Spacemacs


## clj-kondo and joker both linting

You can install both joker and clj-kondo together and they will give more comprehensive linting coverage.

`SPC f e d` to edit the `.spacemacs` file:

1. In `dotspacemacs-additional-packages` add `flycheck-clj-kondo` and `flycheck-joker`.
2. In the `dotspacemacs/user-config` function add the following:

   ``` elisp
   (use-package clojure-mode
    :ensure t
    :config
    (require 'flycheck-joker)
    (require 'flycheck-clj-kondo)
    (dolist (checker '(clj-kondo-clj clj-kondo-cljs clj-kondo-cljc clj-kondo-edn))
      (setq flycheck-checkers (cons checker (delq checker flycheck-checkers))))
    (dolist (checkers '((clj-kondo-clj . clojure-joker)
                        (clj-kondo-cljs . clojurescript-joker)
                        (clj-kondo-cljc . clojure-joker)
                        (clj-kondo-edn . edn-joker)))
      (flycheck-add-next-checker (car checkers) (cons 'error (cdr checkers)))))
   ```

`SPC q r` to restart Spacemacs
