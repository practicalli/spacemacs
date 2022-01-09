# Spacemacs Clojure Layer Overview

The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Blang/clojure) provides full language support and tooling including, autocomplete, refactor, inspector and debug, etc.

Projects managed by [Leiningen](https://leiningen.org), [Boot](http://boot-clj.com/) and [Clojure CLI tools](https://clojure.org/guides/deps_and_cli) (`deps.edn`) are supported and automatically detected when running the REPL.

[![CIDER logo](https://raw.github.com/clojure-emacs/cider/master/logo/cider-logo-w640.png)](https://docs.cider.mx/)

> ####Hint::CIDER is part of the [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Blang/clojure)
> The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Blang/clojure) includes [CIDER](https://github.com/clojure-emacs/cider) and supported Emacs packages, curated to ensure those packages work well together.
>
> Installing the [Clojure layer](/install-spacemacs/manually-add-clojure-layer.md) uses the [latest version of CIDER on Melpa](https://melpa.org/#/cider)


## Features of the Clojure layer

[CIDER](https://docs.cider.mx/cider/1.2/index.html#features) provides a comprehensive range of tools to create quality Clojure code.

Start a REPL (Clojure runtime environment) from Spacemacs and evaluate one or more expressions to see the results in the source code buffer, giving extremely fast feedback on the behavior of that code.

* REPL based Test runner and test reports
* [smart code completion](https://github.com/clojure-emacs/ac-cider)
* live static analysis with [clj-kondo](https://github.com/borkdude/clj-kondo)
* Documentation and source navigation
* Error report filtering
* Value inspector to visualise and navigate evaluation results
* Interactive debugging
* nREPL session management


## Further reading
Some further reading around CIDER:

* [CIDER docs](https://cider.readthedocs.io/en/latest/) for comprehensive details
* [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts)
* [Clojure on Emacs - A CIDER workflow hack](http://blog.jenkster.com/2013/12/a-cider-excursion.html) - Kris Jenkins
