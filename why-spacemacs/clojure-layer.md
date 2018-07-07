# Clojure Layer Overview

The [Clojure layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/clojure) provides a range of tools and full languages support for the Clojure functional programming language.

The Clojure layer supports [Leiningen](https://leiningen.org), [Boot](http://boot-clj.com/) and [Clojure CLI tools](https://clojure.org/guides/deps_and_cli).

The layer is a collection of Emacs packages and curated configuration to ensure all those packages work well together in Spacemacs. The biggest part of the Clojure layer is the CIDER package.

[[![CIDER logo](/images/cider-logo.png)](https://github.com/clojure-emacs/cider)](https://github.com/clojure-emacs/cider)

> ####Hint::CIDER is part of the Clojure layer
> [Opening a Clojure file](/install-spacemacs/clojure-layer.html) or [adding the Clojure layer](/install-spacemacs/manually-add-clojure-layer.html) to Spacemacs will install the latest version of CIDER.


## Features of the Clojure layer

> ####TODO:: Tidy up this section

[CIDER](https://github.com/clojure-emacs/cider) provides a comprehensive range of tools to create quality Clojure code.

Starting a REPL (Clojure runtime environment) from Spacemacs allows you to evaluate one or more expressions and see the results in your code buffer, giving extremely fast feedback on the behaviour of your code.  You also have a separate REPL buffer that will evaluate expressions.

> ####TODO::
> Add animated gifs or video of main features


* inline error and warning highlighting
* human-friendly stack traces
* smart code completion - [auto-complete-mode](https://github.com/clojure-emacs/ac-cider)
* definition & documentation lookup, including [Grimoire](http://conj.io/) integration
* value inspector & function tracing
* interactive macroexpansion
* Run tests and generate reports - with `clojure.test` integration
* classpath & namespace browser
* nREPL session management
* scratchpad
* integration with [company-mode](http://company-mode.github.io/)



## Further reading

  Some further reading around CIDER:

* [CIDER docs](https://cider.readthedocs.io/en/latest/) for comprehensive details
* [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts)
* [Clojure on Emacs - A CIDER workflow hack](http://blog.jenkster.com/2013/12/a-cider-excursion.html) - Kris Jenkins
