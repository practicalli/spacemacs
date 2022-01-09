## Configuration for Unit Testing deps.edn projects
To use the CIDER test runner with `deps.edn` projects, the `test` directory needs to be on the classpath.

The recommended approach is to include the test path via an alias, which avoids including all the test files when packaging the project.

The alias is included in the command to start the REPL (e.g. `cider-jack-in-clj`).

```clojure
:aliases
{:env/test
  {:extra-paths ["test"]}}
```

> #### Hint:: practicalli/clojure-deps-edn contains common tools and aliases
> [practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) contains aliases for all aspects of Clojure development with the CLI tools.


## Edit the Cider command line for jack-in
`SPU u , '` uses the Emacs universal argument with `sesman-start` and displays the command line to be run.

Add `-M:env/test` before the `-m` flag  to include the alias for that jack-in session.

![Spacemacs CIDER configuration - add Clojure CLI tools alias to cider-jack-in command](/images/spacemacs-clojure-repl-start-edit-command-add-aliases.png)

> `SPC u` is the Spacemacs equivalent of `C-u` in Emacs.


## Include aliases via `.dir-locals.el`
`SPC p e` creates a `.dir-locals.el` file to define aliases that are always included during `cider-jack-in`.  Add the variable `cider-clojure-cli-aliases` with a value of the alias names.

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . "env/test"))))
```

Remember to `revert-buffer` on an existing project buffer, or open a file from the current project, to load in any changes to a `.dir-locals.el` file.

> #### Hint::Project configuration with `.dir-locals.el`
> [Project level configuration](/clojure-projects/project-configuration.md) section contains many example configurations that can be set via `.dir-locals.el` file.  Remember to `revert-buffer` an existing project buffer or open a new buffer to load in changes from the `.dir-locals.el` file.
