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

## Testing assertions with a data set
The `are` macro can also be used to define assertions, especially when there would otherwise be multiple assertions that only differ by their test data.

An `are` assertion defines the arguments to the test, the logic of the test and a series of test data.
```clojure
(are [x y] (= x y)
              2 (+ 1 1)
              4 (* 2 2))
```

This is equivalent to writing

```clojure
         (do (is (= 2 (+ 1 1)))
             (is (= 4 (* 2 2))))
```

In this example 5 assertions are almost the same, so are a candidate to be refactored using the `are` macro.
```clojure
(testing "Tens to number words"
  (is (= '("zero" "ten")
         (sut/character-sequence->word-sequence dictionary/digit->word '(\0 \1 \0))))
  (is (= '("zero" "eleven")
         (sut/character-sequence->word-sequence dictionary/digit->word '(\0 \1 \1))))
  (is (= '("zero" "twenty" "zero")
         (sut/character-sequence->word-sequence dictionary/digit->word '(\0 \2 \0))))
  (is (= '("zero" "twenty""one")
         (sut/character-sequence->word-sequence dictionary/digit->word '(\0 \2 \1))))
  (is (= '("zero" "forty" "two")
         (sut/character-sequence->word-sequence dictionary/digit->word '(\0 \4 \2)))))
```

Refactor the assertions using are simplifies the code, making it simpler to change further and extend with more data.
```clojure
(testing "Tens to number words"
  (are [words numbers]
    (= words (sut/character-sequence->word-sequence dictionary/digit->word numbers))
      '("zero" "ten")           '(\0 \1 \0)
      '("zero" "eleven")        '(\0 \1 \1)
      '("zero" "twenty" "zero") '(\0 \2 \0)
      '("zero" "twenty""one")   '(\0 \2 \1)
      '("zero" "forty" "two")   '(\0 \4 \2))
```


## Project Examples: Code challenges with unit tests
* [practicalli/codewars-guides](https://github.com/practicalli/codewars-guides) - deps.edn projects
* [practicalli/exercism-clojure-guides](https://github.com/practicalli/exercism-clojure-guides) - Leiningen projects


## Reference
For full details, visit the [API for `clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html)
