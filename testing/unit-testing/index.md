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

{% tabs repl="In the REPL", project="In a Clojure Project" %}

{% content "repl" %}
```clojure
(require '[clojure.test :refer [deftest is testing]])
```

The namespace under test should be referred, typically using the alias SUT for software under test.

```clojure
(require '[practicalli.playground :as SUT])
```


{% content "project" %}

Add `clojure.test` to the namespace definition along with the namespace under test.

```clojure
(ns practicalli.app-namespace-test
  (:require '[clojure.test :refer [deftest is testing]]
             [practicalli.app-namespace :as SUT]))
```

{% endtabs %}

> #### Hint::SUT alias - software under test
> The alias `SUT`, meaning software under test, is a common convention in unit testing.  Using the SUT alias makes it easier for developers to see which functions from the application are being tested at a glance.


## References
* [Example based unit testing in Clojure](https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/) - PurelyFunctional.tv
https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/
