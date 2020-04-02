## Configuration for Unit Testing deps.edn projects
To use the CIDER test runner the `test` directory needs to be on the classpath.

For `deps.edn` projects, a quick hack is to add the `test` directory to the `:path` configuration.

The recommended approach is to include the test path as an alias

```clojure
:aliases
{:test
  {:extra-paths ["test"]}}
```
`SPU u` before `cider-jack-in` displays the command line to be run, adding `-A:test` as the first option to the clojure binary in this command will include the alias for that jack-in session.

`SPC p e` creates a `.dir-locals.el` file to define aliases that are always included during `cider-jack-in`.  Add the variable `cider-clojure-cli-global-options` with a value of the alias name(s).

```elisp
((clojure-mode . ((cider-clojure-cli-global-options . "-A:test"))))
```
