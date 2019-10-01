# Linting


Linting can show you syntax and style errors as you are typing your code, reducing the number of bugs you write instantly.  Linters are used with the flycheck package, so your code is checked as you type.

[Configure Spacemacs Clojure layer with clj-kondo](clj-kondo.md), the currently recommended linter for Clojure.

![clj-kondo linter](https://raw.githubusercontent.com/borkdude/clj-kondo/b310605dc23689424e2f2d273e6e4b402f7138d7/screenshots/vscode.png)

> #### TODO::Short video of linting in action

| Linters available                                  | Description                                                                                                                                                                                                                                                                                                                                                         | Integration                                                                          |
|----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| [clj-kondo](https://github.com/borkdude/clj-kondo) | [Recommended] A new linter written in Clojure with many new features                                                                                                                                                                                                                                                                         | [flycheck-clj-kondo](https://github.com/borkdude/flycheck-clj-kondo)                 |
| [Eastwood](https://github.com/jonase/eastwood)     | Leiningen plugin that uses the tools.analyzer and tools.analyzer.jvm libraries to inspect namespaces and report possible problems.  [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) continually runs Eastwood in Emacs and does repeatedly reload your code in the repl.  Currently this is the default linter in the Spacemacs Clojure layer | [Clojure layer](http://develop.spacemacs.org/layers/+lang/clojure/README.html)       |
| [Joker](https://github.com/candid82/joker)         | A small Clojure interpreter and linter written in Go.  As joker does not fully understand Clojure there are many false positives to exclude for effective use.                                                                                                                                                                                                      | [Unofficial clojure-lint layer](https://github.com/n2o/clojure-lint-spacemacs-layer) |



## Traditional approach

Eastwood provides a very comprehensive feedback on linting and is very useful to run before pushing commits to a shared repository.  Alternatively you can use Eastwood and Kibit with a CD/CI server for more detailed analysis of your code.  Its like an automated code review to ensure you are following an idiomatic approach in your code.

[Eastwood](https://github.com/jonase/eastwood) and [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) are an option on the Clojure layer, so you only need to enable squiggly linter.

See the section on [Eastwood-Squiggly](/improving-code/linting/eastwood-squiggly.html) for more details.

> #### DANGER::Repeatedly reloads your code
> To run Eastwood automatically from Emacs it will repeatedly reload your code in the REPL, so you need to ensure your code is happy with being reloaded constantly.
>
> Alternatively, you can just run Eastwood separately in a command line window.


## Unofficial clojure-lint layer

Joker is no longer recommended and has been superseded by clj-kondo.

Joker does give fast feedback during coding and gives a good experience.  There are some false positives to configure, but the [install](/improving-code/linting/jocker.html) is fairly straight forward with the unofficial clojure-lint layer.
