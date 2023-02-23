# Spacemacs Clojure Layer Overview

![Spacemacs Clojure Layer](https://raw.githubusercontent.com/practicalli/graphic-design/live/banners/practicalli-banner-spacemacs-clojure-layer.png){loading=lazy}

The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Blang/clojure){target=_blank} provides full language support and tooling including, autocomplete, refactor, inspector and debug, etc.

Projects managed by [Leiningen](https://leiningen.org){target=_blank}, [Boot](http://boot-clj.com/){target=_blank} and [Clojure CLI](https://clojure.org/guides/deps_and_cli){target=_blank} (`deps.edn`) are supported and automatically detected when running the REPL.

!!! HINT "CIDER is provided by the Clojure layer"
    [CIDER](https://github.com/clojure-emacs/cider){target=_blank} is the predominant package for Clojure development with Emacs and includes a range of supporting Emacs packages, curated to ensure those packages work well together.

    The [Clojure layer](/spacemacs/install-spacemacs/manually-add-clojure-layer.md) uses the [latest version of CIDER on Melpa](https://melpa.org/#/cider), either release or latest snapshot.


## Features of the Clojure layer

![Practicalli Cider Logo](https://raw.githubusercontent.com/practicalli/graphic-design/live/logos/practicalli-cider-logo.png){align=right loading=lazy}

[CIDER](https://docs.cider.mx/cider/1.2/index.html#features){target=_blank} provides a comprehensive range of tools to create quality Clojure code.

Start a REPL (Clojure runtime environment) from Spacemacs and evaluate one or more expressions to see the results in the source code buffer, giving extremely fast feedback on the behavior of that code.

* REPL based Test runner and test reports
* [smart code completion](https://github.com/clojure-emacs/ac-cider){target=_blank}
* live static analysis with [clj-kondo](https://github.com/borkdude/clj-kondo){target=_blank} and Clojure LSP
* Documentation and source navigation
* Error report filtering
* Value inspector to visualise and navigate evaluation results
* Interactive debugging
* nREPL session management


## Further reading

* [Official CIDER docs](https://cider.readthedocs.io/en/latest/){target=_blank} for comprehensive details
* [Cider Emacs style key bindings](https://github.com/clojure-emacs/cider#keyboard-shortcuts){target=_blank}
* [Clojure on Emacs - A CIDER workflow hack](http://blog.jenkster.com/2013/12/a-cider-excursion.html){target=_blank} - Kris Jenkins, December 2013
