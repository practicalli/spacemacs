# Linting

> #### TODO::Work in progress, sorry

Linting can show you syntax and style errors as you are typing your code.  There are a few linters to choose from and I recommend using Joker as although it is not Clojure language complete, it does not reload your code in the REPL.


| Linter                                             | Description                                                                                                 | Integration                                                           |
|----------------------------------------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| [Eastwood](https://github.com/jonase/eastwood)     | uses the tools.analyzer and tools.analyzer.jvm libraries to inspect namespaces and report possible problems (reloads your code) | [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) |
| [Joker](https://github.com/candid82/joker)         | Clojure interpreter and linter written in Go (not language complete, but has an unofficial layer, no side effects) | [Unofficial clojure-lint layer](https://github.com/n2o/clojure-lint-spacemacs-layer)                                                                      |
| [clj-kondo](https://github.com/borkdude/clj-kondo) | A new linter written in Clojure and rapidly adding new features                                             | [flycheck-clj-kondo](https://github.com/borkdude/flycheck-clj-kondo)                                                    |


## Simple approach

Eastwood provides a very comprehensive feedback on linting and is very useful to run before pushing commits to a shared repository.

[Eastwood](https://github.com/jonase/eastwood) and [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) are part of the Clojure layer, so you only need to enable them.

See the section on [Eastwood](/improving-code/linting/eastwood.html) for more details.

> #### DANGER::Repeatedly reloads your code
> To run Eastwood automatically from Emacs it will repeatedly reload your code in the REPL, so you need to ensure your code is happy with being reloaded constantly.
>
> Alternatively, you can just run Eastwood manually.


## Using unofficial `clojure-lint` layer

Joker for fast feedback during coding

Joker is the linter I use most often and is [fairly easy to install](/improving-code/linting/jocker.html)



## New linter `clj-kondo`

Although clj-kondo is a new project, it is very exciting and is building a lot of features that are not in Joker.  It is worthwhile installing clj-kondo along-side Joker for the moment.

There are no Spacemacs layers or specific instructions I can find as yet, but it should be able to be added via additional packages.

I have not yet installed clj-kondo in Spacemacs, but [here are my notes so far](/improving-code/linting/clj-kondo/)
