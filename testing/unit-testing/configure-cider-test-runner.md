# Configure CIDER test runner
Configure how the CIDER test runner operates

* Test reports on success
* Automatically running tests
* Custom test namespaces
* Macros to define tests

## Display Test Report on Success
By default the test report is displayed only when there are test failures and subsequent test runs. Configure `cider-test-show-report-on-success` to true to show the report buffer even if tests have never failed.

In the Clojure layer config:
```elisp
(clojure :variables
        cider-test-show-report-on-success t)
```

Or in `dotspacemacs/user-config`
```elisp
(setq cider-test-show-report-on-success t)
```

## CIDER Automatic Test Running
`, T t` (`cider-auto-test-mode`) toggles automatic test.

`, e b` evaluates the current buffer and automatically runs the CIDER test runner using all tests for that namespace

`cider-auto-test-mode` variable configures the state of automatic testing

In the Clojure layer config:
```elisp
(clojure :variables
        cider-auto-test-mode 1)
```


Or in `dotspacemacs/user-config`
```elisp
(cider-auto-test-mode 1)
```


## Custom Test Namespaces
By convention test namespaces follow that of the src namespaces, with a `-test` postfix, e.g. `practicalli.app-main` source namespace will have a matching `practicalli.app-main-test` test namespace.

Configure the variable `cider-test-infer-test-ns` to call a function that takes the current namespace and returns the matching test namespace (which may be the same as the current namespace).

In this example the CIDER test runner look for `practicalli.test-app-main` instead of `practicalli.app-main-test`

```elisp
(defun cider-custom-test-ns-fn (ns)
  "For a NS, return the test namespace, which may be the argument itself.
This uses the convention of prepending 'test-' to the namespace name."
  (when ns
    (let ((prefix "test-"))
      (if (string-prefix-p prefix ns)
          ns
        (concat prefix ns)))))

(setq cider-test-infer-test-ns #'cider-custom-test-ns-fn)
```


## Macros Used to Define Tests
CIDER test runner will not recognize individual tests that are not defined by deftest or defspec,

Customize the variable `cider-test-defining-forms` and add forms for CIDER to recognize as individual test definitions.
