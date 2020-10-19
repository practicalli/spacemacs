# Spacemacs Clojure Layer Overview
The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) provides full language support and tooling including, autocomplete, refactor, inspector and debug, etc.

Projects managed by [Leiningen](https://leiningen.org), [Boot](http://boot-clj.com/) and [Clojure CLI tools](https://clojure.org/guides/deps_and_cli) (`deps.edn`) are supported and automatically detected when running the REPL.

[[![CIDER logo](/images/cider-logo.png)](https://github.com/clojure-emacs/cider)](https://github.com/clojure-emacs/cider)

> ####Hint::CIDER is part of the [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure)
> The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) is a collection of Emacs packages and curated configuration to ensure those packages work well together in Spacemacs. The biggest part of the [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) are the [CIDER](https://github.com/clojure-emacs/cider) packages.
> Installing the [Clojure layer](/install-spacemacs/manually-add-clojure-layer.html) will use the latest release of CIDER.


## Features of the Clojure layer
[CIDER](https://github.com/clojure-emacs/cider) provides a comprehensive range of tools to create quality Clojure code.

Start a REPL (Clojure runtime environment) from Spacemacs and evaluate one or more expressions to see the results in the source code buffer, giving extremely fast feedback on the behavior of that code.

* inline error and warning highlighting, supporting [joker](https://joker-lang.org/) and [clj-kondo](https://github.com/borkdude/clj-kondo) linters
* human-friendly stack traces
* smart code completion - [auto-complete-mode](https://github.com/clojure-emacs/ac-cider)
* definition & documentation lookup
* value inspector & function tracing
* interactive macroexpansion
* Run tests and generate reports - with `clojure.test` integration
* classpath & namespace browser
* nREPL session management
* scratchpad
* integration with [company-mode](http://company-mode.github.io/)

> ####TODO::
> Add animated gifs or video of main features


## Further reading
Some further reading around CIDER:

* [CIDER docs](https://cider.readthedocs.io/en/latest/) for comprehensive details
* [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts)
* [Clojure on Emacs - A CIDER workflow hack](http://blog.jenkster.com/2013/12/a-cider-excursion.html) - Kris Jenkins
