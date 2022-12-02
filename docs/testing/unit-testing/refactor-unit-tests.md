# Refactor Unit Tests
Before changing the names of tests defined with deftest, those tests should be un-evaluated, i.e. removed from the running REPL.  Otherwise the tests will keep running and provide incorrect reports.

<kbd>, e u</kbd> with the cursor on a `deftest` expression will remove that test from the REPL.  A prompt in the mini-buffer is shown to confirm the removal.

The name used for any `deftest` can be un-evaluated, assuming it has been evaluated at least once.  So if a test is failing in the test report but does not exist in the code it can be removed without having to restart the REPL.
