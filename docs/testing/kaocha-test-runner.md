# Kaocha Test Runner

[LambdaIsland/Kaocha](https://github.com/lambdaisland/kaocha "LambdaIsland Kaocha GitHub Repository"){target=_blank} is a feature rich test runner for Clojure and ClojureScript.

Koacha is typically run on the command line or as part of a continuous integration workflow.

Kaocha can also be run as an alternative to the cider-test runner as the Spacemacs Clojure layer [now includes kaocha-runner.el](https://github.com/syl20bnr/spacemacs/pull/15268){target=_blank}.  Kaocha provides options to fail-fast (stops when a test fails) and


## Using Kaocha from Emacs Cider

`SPC f e d` to edit the Spacemacs configuration file, adding `clojure-enable-kaocha-runner t` as a variable to the Clojure layer.

Start a REPL process that includes the kaocha library

`:lib/kaocha` alias in [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank} includes Kaocha as a library

```bash
clojure -M:lib/kaocha:repl/rebel
```

### Key bindings

`, t k a` to run all tests

`, t k t` to run the deftest at point (under the cursor)

`, t k n` to run tests in the current namespace

`, t k w` to show warnings from the kaocha runner

`, t k h` to hide the kaocha test window

!!! HINT "Kaocha runner uses kaocha.repl"
    kaocha-runner.el uses the the same approach as [running Kaocha from the REPL](https://cljdoc.org/d/lambdaisland/kaocha/1.60.977/doc/5-running-kaocha-from-the-repl "Kaocha cljdoc"){target=_blank}


## Using Kaocha from Command Line

Kaocha on the command line will run tests from the saved code files, so is very useful to run before committing files as well as during a Continuous Integration workflow.

[practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank} defines aliases to run Kaocha from the `clojure` command:

`clojure -X:test/run` will run all tests found in the project, unless there is a failing test which will end the test run.

`clojure -X:test/watch` runs all test and then watches for changes to the test code, running again if a change is detected.


### Kaocha shell script

[Kaocha install guide](https://cljdoc.org/d/lambdaisland/kaocha/1.60.977/doc/2-installing){target=_blank} recommends creating an executable shell script file, i.e. `bin/kaocha`

Use the `:test/run` alias from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank} (or create an alias in the project `deps.edn` file)

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
bin/kaocha :watch? true
```

Or define a binary that always watches, e.g. `bin/kaocha-watch` using the `:test/watch` alias from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn)

```bash
#!/usr/bin/env bash

clojure -X:test/watch "$@"
```

!!! HINT "Configure kaocha in tests.edn"
   `tests.edn` in the root of a project can define the [full range of options for Kaocha configuration options](https://cljdoc.org/d/lambdaisland/kaocha/1.62.993/doc/3-configuration){target=_blank} and is the preferred approach.


## Continuous Integration workflow

Add `:test/run` alias to the project `deps.edn` file and define kaocha configuration in a `tests.edn` file in the root of the project.

Define a job that runs the tests that calls either the kaocha script or the `clojure` command to run all the tests.

* [Banking on Clojure - using Kaocha Orb with Circle CI](https://practical.li/clojure-web-services/projects/banking-on-clojure/continuous-integration.html){target=_blank}
