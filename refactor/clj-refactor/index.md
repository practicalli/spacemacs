# Refactor Clojure Code

The Spacemacs [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) includes comprehensive support for refactoring Clojure and ClojureScript code.  Refactoring mainly comes from the [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el) package.

The refactor commands extend the code management tools you get with clojure-mode, [CIDER]() and [structured editing](structured-editing/).

This section covers the most commonly used refactor commands, there is also a [full list of refactorings](https://github.com/clojure-emacs/clj-refactor.el/wiki) on the [clj-refactor wiki](https://github.com/clojure-emacs/clj-refactor.el/wiki).

> ####Info::Refactoring tools are included in the Spacemacs clojure layer
> [CIDER]() and [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el) packages provide tools for refactoring Clojure and ClojureScript code.
> These packages are included in the [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) and require no further configuration.

## Refactor menu

The refactor functions are available via the Spacemacs menu or Clojure major mode.  The Emacs keybinding are also available but not covered in detail here.

| Spacemacs | Major Mode (Evil) | Major mode (holy) | Emacs     |
|-----------|-------------------|-------------------|-----------|
| `SPC m r` | `, r`             | `M-RET r`         | `C-c C-f` |


The top level refactor menu is as follows:

![Spacemacs Clojure menu - refactor](/images/spacemacs-clojure-menu-refactor.png)


## Multiple refactoring with Hydra and clj-refactor

You can run multiple refactor functions using the Hydra menu for clj-refactor.  The hydra menu stays open allowing you to use the two character nemonic for each refactor.

The hydra version of the clj-refactor menu is available via `C-c C-f h h`.

![clj-refactor hydra menu](/images/cljr-hydras.gif)

> ####TODO::Add Spacemacs keybindings for clj-refactor hydra
> There does not seem to be a keybinding in the spacemacs menu, so it may require a pull request
