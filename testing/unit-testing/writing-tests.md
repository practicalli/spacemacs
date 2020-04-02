# Writing Unit Tests with clojure.test

Unit tests are centered on assertions, testing if something returns a true or false value.

`is` function is the simplest assertion and the most common.  It checks to see if an expression given is true and if so then the assertion passes.  If the value is false then that assertion fails.

`as` provides a way to run the same assertion with different values, testing the same function with a collection of arguments.  This provides a clean way to test a function without lots of repetition.


`testing` is a macro to group multiple assertions together, providing a string in which to describe the context the assertions are testing.  The well worded context string is invaluable for narrowing down on which assertions are failing.

`deftest` is a collection of assertions, with or without `testing` expressions.  The name of the deftest should be the name of the function it is testing with `-test` as a postfix.  For example, the function `practicalli.playground/calculator` would have a `deftest` called `practicalli.playground-test/calculator-test`

## Simple Example
```clojure
(deftest public-function-in-namespace-test
  (testing "A description of the test"
    (is (= 1 (public-function arg)))
    (is (predicate-function? arg))))
```

For full details, visit the [API for `clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html)
