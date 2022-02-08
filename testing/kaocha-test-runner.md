# Kaocha Test Runner

[LambdaIsland/Kaocha](https://github.com/lambdaisland/kaocha "LambdaIsland Kaocha GitHub Repository") is a feature rich test runner for Clojure and ClojureScript.

Koacha is typically run on the command line or as part of a continuous integration workflow.

Kaocha can also be run as an alternative to the cider-test runner as the Spacemacs Clojure layer [now includes kaocha-runner.el](https://github.com/syl20bnr/spacemacs/pull/15268)


## Using Kaocha from Emacs Cider

`SPC f e d` to edit the Spacemacs configuration file, adding `clojure-enable-kaocha-runner t` as a variable to the Clojure layer.

Start a REPL process that includes the kaocha library

`:lib/kaocha` alias in [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) includes Kaocha as a library

```bash
clojure -M:lib/kaocha:repl/rebel
```

### Key bindings

`, t k a` to run all tests

`, t k t` to run the deftest at point (under the cursor)

`, t k n` to run tests in the current namespace

`, t k w` to show warnings from the kaocha runner

`, t k h` to hide the kaocha test window

> #### Hint::Kaochan runner uses kaocha.repl
> kaocha-runner.el uses the the same appraoch as [running Kaocha from the REPL](https://cljdoc.org/d/lambdaisland/kaocha/1.60.977/doc/5-running-kaocha-from-the-repl "Kaocha cljdoc")


## Kaocha Clojure CLI Ailas

practicalli/clojure-deps-edn defines aliases to run Kaocha from the `clojure` command:

`clojure -X:test/run` will run all tests found in the project, unless there is a failing test which will end the test run.

`clojure -X:test/watch` runs all test and then watches for changes to the test code, running again if a change is detected.


## Kaocha shell script

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
