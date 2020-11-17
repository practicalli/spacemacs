# Start a new Clojure REPL
Spacemacs can start a REPL for the current Clojure project, calling out to the Clojure CLI tools (`deps.edn`), Leiningen (`project.clj`) or Boot (`boot.build`) based on which configuration file is found in the root of the project.  A prompt is displayed if there are multiple project configuration files to choose from.

You can run the following types of REPL's
* `cider-jack-in-clj` for Clojure on the JVM
* `cider-jack-in-cljs` for a ClojureScript REPL
* `cider-jack-in-clj&cljs` for both the above (full stack)

Open or select a Clojure buffer, this can be an `.edn`, `.clj`, `.cljc` or `.cljs` file.

| Key bindings     | Description                                  |
|------------------|----------------------------------------------|
| `, '` or `, m s` | `sesman-start` to start or connect to a REPL |

Once the REPL starts, [evaluate expressions using the source code buffer](/evaluating-clojure/).


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


## Common REPL start / restart keybindings

| Key bindings     | Command                                                                 |
|------------------|-------------------------------------------------------------------------|
| `, '` or `, m s` | start a REPL, selecting the type (`sesman-start`)                       |
| `, m b`          | browse active REPL's  (`sesman-browse`)                                 |
| `, m i`          | show information about the current REPL  (`sesman-info`)                |
| `, m q r`        | restart the REPL, quit and jack-in.  (`sesman-restart`)                 |
| `, m q q`        | quit the REPL (`sesman-quit`)                                           |
| `, e n`          | refresh stale code and load new code into the REPL (`cider-ns-refresh`) |
| `, e N`          | force reload the current namespaces in the REPL (`cider-ns-reload`)     |
