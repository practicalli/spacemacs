# References

http://endlessparentheses.com/a-small-improvement-to-clj-refactor.html

## Spacemacs clj-refactor configuration

All functions in clj-refactor have a two-letter mnemonic shortcut. E.g. `rs` for `cljr-rename-symbol`.

The configuration for clj-refactor is in the file `~/.emacs.d/layers/+lang/clojure/packages.el`.  The specific `clj-refactor` configuratoin is in the `clojure/init-clj-refactor` function.

The most relevant configuration is the keybindings prefix, which for spacemacs is `c-c C-f`.

```elisp
(cljr-add-keybindings-with-prefix "C-c C-f")
```

The Spacemacs nemonic menu is defined in the ` clj-refactor--key-binding-prefixes` list.  These are the menu options when you press `SPC`

```lisp
      (setq clj-refactor--key-binding-prefixes
            '(("mr" . "refactor")
              ("mra" . "add")
              ("mrc" . "cycle/clean")
              ("mrd" . "destructure")
              ("mre" . "extract/expand")
              ("mrf" . "find/function")
              ("mrh" . "hotload")
              ("mri" . "introduce/inline")
              ("mrm" . "move")
              ("mrp" . "project/promote")
              ("mrr" . "remove/rename/replace")
              ("mrs" . "show/sort/stop")
              ("mrt" . "thread")
              ("mru" . "unwind/update")))
```
