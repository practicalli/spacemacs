## Re-run test from  test results buffer
A test report is only generated once any of the tests fail for the current REPL session.  Once a test report has been created, further test runs will update the report.  The test report is displayed in a new buffer.

![Clojure test report - failure](/images/spacemacs-cider-test-report-fail.png)

Tests can be re-run from the `*cider-test-results*` buffer, although this buffer does not support Evil normal state (PR's welcome).

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
