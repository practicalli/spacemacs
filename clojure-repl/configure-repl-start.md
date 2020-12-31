## Start REPL with deps.edn aliases
`SPC u ,'` or `SPC u , s i` will start a Clojure REPL, showing an editable prompt containing the full command used to start the REPL process.  Edit the command to include the required aliases after the `clojure` executable name.

![Spacemacs Clojure - Edit cider-jack-in command to add Clojure deps.edn aliases](/images/spacemacs-clojure-repl-start-edit-command-add-aliases.png)


## Use .dir-locals.el to configure REPL startup
Aliases and configuration that customize the REPL startup can be added to a `.dir-locals.el` file in the root of the Clojure project.

`SPC p e` creates or opens a `.dir-locals.el` file in the root of the project.  A helm prompt also allows for adding entries into the file.

Add the `:env/test` alias to `cider-clojure-cli-global-options` and these aliases will always be included when running a REPL from Spacemacs

```elisp
((clojure-mode . ((cider-clojure-cli-global-options . "-M:env/test"))))
```

[Clojure projects](/clojure-projects/) contains further examples of configuring the REPL startup.
