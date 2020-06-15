# Running unit tests in Cider
<kbd>SPC p a</kbd> switches between source and test buffers.

<kbd>, t n</kbd> run all tests in the current namespace.  This also loads any changes to those tests.

<kbd>, t a</kbd> run all tests.  If tests are changed or added, `, e f` to evaluate those tests to add them to the REPL or `, e b` on any test buffers that have changed.

The results of running the tests are displayed in the mini-buffer, showing the number of tests run and how many passed and failed.

![Spacemacs Cider tests - results in mini-buffer](/images/spacemacs-cider-test-run-tests-results-mini-buffer.png)

A test report is generated if any of the tests fail and is displayed in a new buffer.

![Clojure test report - failure](/images/spacemacs-cider-test-report-fail.png)

> #### Hint::Run tests from test code buffer
> Run tests from the buffer containing the test source code buffer, as this ensures all test code is loaded and the latest version of the tests are run.
>
> Tests can be run from the source code buffer, however, only test code that has been evaluated in the REPL will run.

## Run Cider test results buffer
Tests can be run from the `*cider-test-results*` buffer, although this buffer does not support Evil normal state.

<kbd>C-z</kbd> to switch to Emacs state in order for these keybindings to work.

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


## Running tests in the REPL buffer
<kbd>,</kbd> to open the REPL command menu and select run tests

## Auto Unit Test Mode
<kbd>, T t</kbd> to toggle auto test mode

<kbd>, e b</kbd> will evaluate the current buffer and automatically run all tests.
