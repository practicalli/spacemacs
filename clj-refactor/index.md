# Refactor Clojure Code

[clj-refactor](https://github.com/clojure-emacs/clj-refactor.el) provides refactoring support for Clojure projects.

We will cover the most commonly used refactor commands, there is also a [full list of refactorings](https://github.com/clojure-emacs/clj-refactor.el/wiki) on the [clj-refactor wiki](https://github.com/clojure-emacs/clj-refactor.el/wiki).

clj-refactor is included in the [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure), so when ever you are working with a Clojure or Clojurescript file the refactor functions are available.

The clj-refactor functions are available via 

| Spacemacs | Major mode | Emacs     | Evil  |
|-----------|------------|-----------|-------|
| `SPC m r` | `M-RET r`  | `C-c C-f` | `, r` |


The top level `clj-refactor` menu is as follows:

![Spacemacs Clojure menu - refactor](/images/spacemacs-clojure-menu-refactor.png)

## Multiple refactoring with Hydra and clj-refactor

You can run multiple refactor functions using the Hydra menu for clj-refactor.  The hydra menu stays open allowing you to use the two character nemonic for each refactor.

The hydra version of the clj-refactor menu is available via `C-c C-f h h`.

![clj-refactor hydra menu](/images/cljr-hydras.gif)


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

