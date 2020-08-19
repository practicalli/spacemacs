# clj-refactor - additional refactor commands
[clj-refactor](https://github.com/clojure-emacs/clj-refactor.el) is an optional package in the [Spacemacs Clojure layer](https://develop.spacemacs.org/layers/+lang/clojure/README.html) that provides [additional refactor commands](https://github.com/clojure-emacs/clj-refactor.el/wiki).

These commands typically require a running REPL to work.

![clj-refactor teaser](https://raw.githubusercontent.com/clojure-emacs/clj-refactor.el/master/examples/add-missing-libspec.gif)

This section covers the more commonly used refactor commands.

## Enable clj-refactor
[Enable using the `clojure-enable-clj-refactor` variable](http://practicalli.github.io/spacemacs/install-spacemacs/enhance-clojure-experience.html#edit-spacemacs-and-add-layers) in your `.spacemacs` layer configuration

```elisp
(clojure :variables
         clojure-enable-clj-refactor t)
```

`SPC q r` to restart Spacemacs which will download and install clj-refactor.  Or use `SPC f e R` to reload the Spacemacs configuration which should also download and install clj-refactor.
