# Live linting with clj-kondo

[clj-kondo](https://github.com/borkdude/clj-kondo) is a linter that can be called from flycheck, providing live static code analysis on your Clojure code as you type.  Simple open any Clojure file (`.clj`, `.cljs`, `.cljc`, `.edn`) and start typing.  clj-kondo does not need a running Clojure REPL to work.

When errors are detected by the linter a red dot appears in the margin showing the line.  A red underscore shows where on the line the issue is.  Moving the cursor to the underscore will show a pop-up describing the error.

The total number of errors and warnings are show in in the Space bar.

![clj-kondo linter](https://raw.githubusercontent.com/borkdude/clj-kondo/b310605dc23689424e2f2d273e6e4b402f7138d7/screenshots/vscode.png)

> #### TODO::Add spacemacs specific images

## Requirements

1. `syntax-checking` layer is present in `dotspacemacs-configuration-layers`, which provides flycheck.
2. `clj-kondo` is available on PATH (see [clj-kondo install instructions](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md)).
3. Spacemacs `develop` branch as of September 2019 or later


## Configure Spacemacs Clojure layer with clj-kondo

Add a variable called `clojure-enable-linters` to the `clojure` with the value `'clj-kondo`.

```elisp
dotspacemacs-configuration-layers
'(...
    (clojure :variables
             clojure-enable-linters 'clj-kondo)
 )
```

`SPC q r` to restart Spacemacs (or simply `SPC f e R` to reload the configuration)


> #### Hint::Conflicts
> This configuration approach for clj-kondo is broken if you also include the unofficial `clojure-lint` layer that can provide Joker.  clj-kondo has superseded Joker in functionality.
