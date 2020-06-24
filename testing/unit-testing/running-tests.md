# Running unit tests in Cider
<kbd>SPC p a</kbd> switches between source and test buffers.

<kbd>, t n</kbd> run all tests in the current namespace.  This also loads any changes to those tests.

<kbd>, t a</kbd> run all tests.  If tests are changed or added, `, e f` to evaluate those tests to add them to the REPL or `, e b` on any test buffers that have changed.

The results of running the tests are displayed in the mini-buffer, showing the number of tests run and how many passed and failed.

![Spacemacs Cider tests - results in mini-buffer](/images/spacemacs-cider-test-run-tests-results-mini-buffer.png)

> #### Hint::Run tests from test code buffer
> Run tests from the buffer containing the test source code buffer, as this ensures all test code is loaded and the latest version of the tests are run.
>
> Tests can be run from the source code buffer, however, only test code that has been evaluated in the REPL will run.

## Running tests in the REPL buffer
<kbd>,</kbd> to open the REPL command menu and select run tests

## Auto Unit Test Mode
<kbd>, T t</kbd> to toggle auto test mode

<kbd>, e b</kbd> will evaluate the current buffer and automatically run all tests.


> #### Hint::CIDER test report only created on test failure
> To show a test report each time tests are run, add the variable `cider-test-show-report-on-success t` in the `clojure` layer list of the `.spacemacs` file.
```lisp
     (clojure :variables
              clojure-enable-linters 'clj-kondo
              cider-test-show-report-on-success t)
```
