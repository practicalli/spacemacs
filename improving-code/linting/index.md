# Linting


Linting can show you syntax and style errors as you are typing your code.  There are a few linters to choose from and I recommend using Joker as although it is not Clojure language complete, it does not reload your code in the REPL.

> #### Hint::Current Recommendation
> Eastwood is currently part of the Clojure layer, however, the Emacs integration with Squiggly reloads code into the repl.  The currently suggested approach is to use Joker and clj-kondo together and only run Eastwood in a separate command line window.
> A PR to add all three linters as options on the Clojure layer is in discussion

| Linter                                             | Description                                                                                                 | Integration                                                           |
|----------------------------------------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Eastwood](https://github.com/jonase/eastwood)     | Leiningen plugin that uses the tools.analyzer and tools.analyzer.jvm libraries to inspect namespaces and report possible problems.  [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) continually runs Eastwood in Emacs and does repeatedly reload your code in the repl.  Currently this is the default linter in the Spacemacs Clojure layer | [Clojure layer](http://develop.spacemacs.org/layers/+lang/clojure/README.html)                                                                                                            |
| [Joker](https://github.com/candid82/joker)         | Clojure interpreter and linter written in Go (not language complete, but has an unofficial layer, no side effects) | [Unofficial clojure-lint layer](https://github.com/n2o/clojure-lint-spacemacs-layer)                                                                      |
| [clj-kondo](https://github.com/borkdude/clj-kondo) | A new linter written in Clojure and rapidly adding new features                                             | [flycheck-clj-kondo](https://github.com/borkdude/flycheck-clj-kondo)                                                    |


## Existing approach

Eastwood provides a very comprehensive feedback on linting and is very useful to run before pushing commits to a shared repository.

[Eastwood](https://github.com/jonase/eastwood) and [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) are part of the Clojure layer, so you only need to enable them.

See the section on [Eastwood](/improving-code/linting/eastwood.html) for more details.

> #### DANGER::Repeatedly reloads your code
> To run Eastwood automatically from Emacs it will repeatedly reload your code in the REPL, so you need to ensure your code is happy with being reloaded constantly.
>
> Alternatively, you can just run Eastwood separately in a command line window.


## Unofficial `clojure-lint` layer

Joker for fast feedback during coding and gives a good experience.  There are some false positives to configure, but the install is fairly straight forward with the unofficial clojure-lint layer.

Joker is the linter I use most often and is [fairly easy to install](/improving-code/linting/jocker.html)


## New linter `clj-kondo`

Although [clj-kondo](https://github.com/borkdude/clj-kondo) is a new project, it is very exciting and is building a lot of features that are not in Joker.  It is worthwhile installing clj-kondo along-side Joker for the moment.

No Spacemacs layer exists, although there are [Spacemacs specific instructions](https://github.com/borkdude/clj-kondo/blob/master/doc/editor-integration.md#spacemacs) be able to be added via additional packages.

There are advantages to running `clj-kondo` and `joker` together.
