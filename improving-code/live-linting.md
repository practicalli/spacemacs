# Live linting with clj-kondo

[clj-kondo](https://github.com/borkdude/clj-kondo) is a linter that can be called from flycheck, providing live static code analysis on your Clojure code as you type.  Simple open any Clojure file (`.clj`, `.cljs`, `.cljc`, `.edn`) and start typing.  clj-kondo does not need a running Clojure REPL to work.

When errors are detected by the linter a red dot appears in the margin showing the line.  A red underscore shows where on the line the issue is.  Moving the cursor to the underscore will show a pop-up describing the error.

The total number of errors and warnings are show in in the Space bar.

![Spacemacs live lintking - clj-kondo and flycheck errors](/images/spacemacs-clojure-linting-code-marks-and-flycheck-list-errors.png)


## Navigating linting errors

`SPC e L` opens a window with a buffer containing the list of linting errors for the current file. Navigate between linting errors using `j` and `k`. `RET` to select an error, focusing the cursor in the other buffer on that error

`SPC b x` to close the buffer and window when you have finished.

![Spacemacs - Clojure Linting - flycheck list errors](/images/spacemacs-clojure-linting-flycheck-list-errors.png)

Keeping the flycheck buffer open will update as you move to linting errors in the source code buffer.

> #### Hint::Not all error menu commands work
> Some commands in the error menu [do not currently work with linting in Clojure](https://github.com/syl20bnr/spacemacs/issues/12919).

## Configure Spacemacs Clojure layer with clj-kondo

Requirements for using clj-kondo as a live linter:

1. `syntax-checking` layer is present in `dotspacemacs-configuration-layers`, which provides flycheck.
2. `clj-kondo` is available on PATH (see [clj-kondo install instructions](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md)).
3. Spacemacs `develop` branch as of September 2019 or later


Add a variable called `clojure-enable-linters` to the `clojure` with the value 'clj-kondo.

```elisp
    (clojure :variables
             clojure-enable-linters 'clj-kondo)
```

`SPC q r` to restart Spacemacs (or simply `SPC f e R` to reload the configuration)


> #### Hint::Conflicts
> Using the unofficial `clojure-lint` layer will cause conflicts and may interfere with clj-kondo live linting.
