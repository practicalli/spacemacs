# Testing

[`clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html) is the default 'unit' testing framework for Clojure, as it has a simple syntax for writing tests and it is part of the Clojure.core library.

## Example of `clojure.test` syntax

```clojure
(deftest public-function-in-namespace-test
  (testing "A description of the test"
    (is (= 1 (public-function arg)))
    (is (predicate-function? arg))))
```

For full details, visit the [API for `clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html)

# Running tests in Cider

| Spacemacs   | Vim Major mode | Emacs Major mode | command                    |
|-------------|----------------|------------------|----------------------------|
| `SPC m t a` | `, t a`        | `M-RET t a`      | `cider-test-run-all-tests` |

Tests can be run from a Clojure buffer containing the test code itself, or from the Clojure source code (in which case CIDER will look up the corresponding test namespace).

Tests can also be run from the REPL buffer, using the `,` menu.

## Auto Test Mode

* `, T t` to toggle auto test mode

after which you can just `, e b` and it will automatically run tests every time.

by re-evaluating the buffer with auto test mode on it to automatically run tests whenever that namespace is loaded.
