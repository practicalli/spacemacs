## Configuration for Unit Testing deps.edn projects
To use the CIDER test runner with `deps.edn` projects, the `test` directory needs to be on the classpath.

The recommended approach is to include the test path as an alias

```clojure
:aliases
{:test-path
  {:extra-paths ["test"]}}
```

> #### Hint::Use practicalli/clojure-deps-edn to add common tools and aliases
> Create a fork of the [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) on GitHub
>
> Clone that fork to `~/.clojure/` and instantly have access to dozens of tools for Clojure software development
>
> All tools are provided via libraries and are only installed if used.


`SPU u` before `cider-jack-in` displays the command line to be run, adding `-A:test-path` as the first option to the clojure binary in this command will include the alias for that jack-in session.

`SPC p e` creates a `.dir-locals.el` file to define aliases that are always included during `cider-jack-in`.  Add the variable `cider-clojure-cli-global-options` with a value of the alias name(s).

```elisp
((clojure-mode . ((cider-clojure-cli-global-options . "-A:test"))))
```


> #### Hint::CIDER test report only created on test failure
> To show a test report each time tests are run, add the variable `cider-test-show-report-on-success t` in the `clojure` layer list of the `.spacemacs` file.
```lisp
     (clojure :variables
              clojure-enable-linters 'clj-kondo
              cider-test-show-report-on-success t)
```
