# Linting with Kondo

> #### TODO::work in progress, sorry
> Spacemacs does not have a layer for clj-kondo as yet
> It would be great to add clj-kondo to the unofficial clojure-lint spacemacs layer or pull into the clojure layer,
> with an option to add either joker, clj-kondo or both (a variable like clj-refactor)

A minimal and opinionated linter for Clojure code that sparks joy, written in Clojure by @borkdude

clj-kondo is under active development, although its usable already.  The author is developing features not available in Joker, so worth combining the two liners for now.

https://github.com/borkdude/clj-kondo/raw/master/screenshots/wrong-arity.png

## Install steps

* [Install clj-kondo](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md)
* [Install flycheck-clj-kondo](https://github.com/borkdude/flycheck-clj-kondo)


## Thoughts

Can we just add `flycheck-clj-kondo` to `dotspacemacs-additonal-packages` and then add a require to `user-config`
