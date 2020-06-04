# Unit Testing
In Clojure the unit under test is the function.  Unit test coverage should test all public function that form the API of their respective namespace.

`clojure.test` namespace provides a unit testing framework and is included in the Clojure library, so is available in all Clojure projects.


## Principles for writing test code
* One `test` namespace for each `src` namespace
* One `deftest` function for each function under test
* Multiple `is` assertions for one function
* Group assertions in `testing` and provide a meaningful description of that grouping, adding more information when reviewing test failures especially for larger code bases.




The namespace under test should be referred, typically using the alias SUT for software under test.



## References
* [Example based unit testing in Clojure](https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/) - PurelyFunctional.tv
https://purelyfunctional.tv/mini-guide/example-based-unit-testing-in-clojure/
