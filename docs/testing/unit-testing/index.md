# Unit Testing

In Clojure the unit under test is the function.  Unit test coverage should test all public function that form the API of their respective namespace.

`clojure.test` namespace provides a unit testing framework and is included in the Clojure library, so is available in all Clojure projects.


## Principles for writing test code

* One `test` namespace for each `src` namespace
* One `deftest` function for each function under test
* Multiple `is` assertions for one function
* Group assertions in `testing` and provide a meaningful description of that grouping, adding more information when reviewing test failures especially for larger code bases.


## Requiring Namespaces

A test namespace has a singular purpose to test a matching application namespace.  Therefore the idiomatic approach is to `:refer` specific functions from `clojure.test`.

=== "REPL"

    ```clojure
    (require '[clojure.test :refer [deftest is testing]])
    ```

    The namespace under test should be referred, using a meaningful alias name.

    ```clojure
    (require '[practicalli.playground :as playground])
    ```

=== "Clojure Project"

    Add `clojure.test` to the namespace definition along with the namespace under test.

    ```clojure
    (ns practicalli.app-namespace-test
      (:require '[clojure.test :refer [deftest is testing]]
                 [practicalli.app-namespace :as app-namespace]))
    ```

    Providing an alias that is the same name as the namespace being tested creates easily readable test code.



## Project structure with tests

By convention, separate `src` and `test` directories are used to hold the source code and the code that tests the source code.

For each source code file in `src` there should be a corresponding file in test with the same name and `-test` postfix.

For example, code to test the `src/codewars/rock_paper_scissors.clj` is saved in the file `src/codewars/rock_paper_scissors_test.clj` file.

![Clojure project structure - src and test branches](/spacemacs/images/clojure-project-structure-src-test-tree.png)

!!! HINT "Create Projects from templates"
    Templates typically include a parallel `test` and `src` directory structure.  The `clj-new` tool has build it templates (app, lib) and will create `src` and `test` directories in the projects it creates.

    `clojure -X:project/new :template app :name practicalli/rock-paper-scissors-lizard-spock`


## References

* [Example based unit testing in Clojure](https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/){target=_blank} - PurelyFunctional.tv
