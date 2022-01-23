# Kaocha Test Runner

[LambdaIsland/Kaocha](https://github.com/lambdaisland/kaocha "LambdaIsland Kaocha GitHub Repository") is a feature rich test runner for Clojure and ClojureScript.

Koacha is typically run on the command line or as part of a continuous integration workflow.

Kaocha can also be run as an alternative to the cider-test runner as the Spacemacs Clojure layer [now includes kaocha-runner.el](https://github.com/syl20bnr/spacemacs/pull/15268)


## Using Clojure from Emacs Cider

Start a REPL process that includes the kaocha library

`:lib/kaocha` alias in [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) includes Kaocha as a library

```bash
clojure -M:lib/kaocha:repl/rebel
```

> #### Hint::Kaochan runner uses kaocha.repl
> kaocha-runner.el uses the the same appraoch as [running Kaocha from the REPL](https://cljdoc.org/d/lambdaisland/kaocha/1.60.977/doc/5-running-kaocha-from-the-repl "Kaocha cljdoc")


## Command line

[Kaocha install guide](https://cljdoc.org/d/lambdaisland/kaocha/1.60.977/doc/2-installing) recommends creating an executable shell script file

Use the `:test/run` alias from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) (or create an alias in the project `deps.edn` file)

```bash
#!/usr/bin/env bash

clojure -X:test/run "$@"
```

Run the shell script to run all the tests

```bash
bin/kaocha
```

To continually watch a function, pass the watch argument `:watch? true`

```bash
kaocha :watch? true
```

Or define a binary that always watches, using the `:test/watch` alias from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn)


```bash
#!/usr/bin/env bash

clojure -X:test/watch "$@"
```

## Continuous Integration workflow

Add `:test/run` alias to the project `deps.edn` file

Define a job that runs the tests that calls the kaocha script to run all the tests.

* [Banking on Clojure - using Kaocha Orb with Circle CI](https://practical.li/clojure-web-services/projects/banking-on-clojure/continuous-integration.html)
