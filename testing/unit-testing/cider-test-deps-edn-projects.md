## Configuration for Unit Testing deps.edn projects
To use the CIDER test runner with `deps.edn` projects, the `test` directory needs to be on the classpath.

The recommended approach is to include the test path as an alias.  Then that alias is included in the command to start the REPL (e.g. `cider-jack-in-clj`)

```clojure
:aliases
{:env/test
  {:extra-paths ["test"]}}
```

> #### Hint:: practicalli/clojure-deps-edn contains common tools and aliases
> [practicalli/clojure-deps-edn](/before-you-start/install-clojure.html#clojure-cli-tools-and-common-aliases) contains aliases for all aspects of Clojure development with the CLI tools.


## Edit the Cider command line for jack-in
`SPU u` before `cider-jack-in` displays the command line to be run, adding `-A:test-path` as the first option to the clojure binary in this command will include the alias for that jack-in session.

> `SPC u` is the Spacemacs equivalent of `C-u` in Emacs.


## Include aliases via `.dir-locals.el`
`SPC p e` creates a `.dir-locals.el` file to define aliases that are always included during `cider-jack-in`.  Add the variable `cider-clojure-cli-global-options` with a value of the alias name(s**.

```elisp
((clojure-mode . ((cider-clojure-cli-global-options . "-M:env/test"))))
```

Remember to `revert-buffer` on an existing project buffer, or open a file from the current project, to load in any changes to a `.dir-locals.el` file.

> #### Hint::Project configuration with `.dir-locals.el`
> [Project level configuration](https://practicalli.github.io/spacemacs/clojure-projects/project-configuration.html) section contains many example configurations that can be set via `.dir-locals.el` file.  Remember to `revert-buffer` an existing project buffer or open a new buffer to load in changes from the `.dir-locals.el` file.
