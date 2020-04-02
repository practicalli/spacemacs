# Running unit tests in Cider
Run tests from the buffer containing the test source code buffer, as this ensures all test code is loaded and the latest version of the tests are run.

`SPC p a` switches between source and test buffers.

| Keybinding | description               |
|------------|---------------------------|
| `, t a`    | load buffer and run tests |

Tests can be run from the source code buffer, however, only test code that has been evaluated in the REPL will run.

<kbd>,</kbd> to invoke tests commands from the REPL buffer

## Auto Unit Test Mode

* `, T t` to toggle auto test mode

 e b` will automatically run tests.

by re-evaluating the buffer with auto test mode on it to automatically run tests whenever that namespace is loaded.



## Cider test results buffer
Tests can be run from the `*cider-test-results*` buffer

Keyboard shortcut               | Description
--------------------------------|-------------------------------
<kbd>g</kbd>                    | Run test at point.
<kbd>n</kbd>                    | Run tests for current namespace.
<kbd>l</kbd>                    | Run tests for all loaded namespaces.
<kbd>p</kbd>                    | Run tests for all project namespaces. This loads the additional namespaces.
<kbd>f</kbd>                    | Re-run test failures/errors.
<kbd>M-p</kbd>                  | Move point to previous test.
<kbd>M-n</kbd>                  | Move point to next test.
<kbd>t</kbd> or <kbd>M-.</kbd>  | Jump to test definition.
<kbd>d</kbd>                    | Display diff of actual vs expected.
<kbd>e</kbd>                    | Display test error cause and stacktrace info.



> ####Bug::Re-write for Spacemacs
> From cider documentation: [running tests](https://github.com/clojure-emacs/cider/blob/master/doc/running_tests.md)


## Additional configuration
Certain aspects of the test execution behavior are configurable:

* If your tests are not following the `some.ns-test` naming convention you can
customize the variable `cider-test-infer-test-ns`. It should be bound to a
function that takes the current namespace and returns the matching test
namespace (which may be the same as the current namespace).

* If your individual tests are not defined by `deftest` or `defspec`, CIDER will
not recognize them when searching for a test at point in `cider-test-run-test`.
You can customize the variable `cider-test-defining-forms` to add additional
forms for CIDER to recognize as individual test definitions.

* If you want to view the test report regardless of whether the tests have
passed or failed:

```el
(setq cider-test-show-report-on-success t)
```

### Running tests automatically (test-driven development)

CIDER provides a minor-mode that automatically runs all tests for a namespace
whenever you load a file (with <kbd>C-c C-k</kbd>). You can toggle it
manually with <kbd>M-x</kbd> `cider-auto-test-mode`, or you can use:

```el
(cider-auto-test-mode 1)
```

This is completely equivalent to manually typing <kbd>C-c C-t C-n</kbd> every
time you load a Clojure buffer. Also, as described above before, CIDER is smart
enough to figure out the namespace containing the tests.

### Using cider-test with alternative test libraries

The `clojure.test` machinery is designed to be pluggable. Any test library
can implement it if so desired, and therefore leverage `cider-test`. For
instance, [test.check](https://github.com/clojure/test.check/) does this, and
`cider-test` handles `defspec` just like `deftest`.

As a test framework author, supporting the built-in `clojure.test` machinery
(and hence `cider-test`) is pretty straightforward:

1. Assoc each test fn as `:test` metadata on some var. These are what get run.
2. Implement the `clojure.test/report` multimethod to capture the test results.

The `test.check` library is a good example here. It was also designed completely
independently of `clojure.test`. It just adds compatibility in this
[namespace](https://github.com/clojure/test.check/blob/24f74b83f1c7a032f98efdcc1db9d74b3a6a794d/src/main/clojure/clojure/test/check/clojure_test.cljc).
