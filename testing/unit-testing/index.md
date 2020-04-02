# Unit Testing
Clojure includes `clojure.test` namespace provides a unit testing framework.

Creating Leiningen and deps.edn projects from templates typically includes a test namespace for each source code namespace.

`clojure.test` is included in the standard Clojure jar file, so no additional dependencies are required.


## Organising test code
Create a namespace that matches the source code namespace to be tested, with a `-test` postfix.  For example, code to test the ``practicalli.playground`` namespace is defined in the `practicalli.playground-test` namespace.

The idiomatic approach is to include just the function names used from the `clojure.test` namespace.

`(require '[clojure.test :refer [deftest is testing]])`

The namespace under test should be referred, typically using the alias SUT for software under test.

`(require '[practicalli.playground :as SUT])`


## References
* [Example based unit testing in Clojure](https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/) - PurelyFunctional.tv
https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/
