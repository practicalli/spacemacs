# Start a new Clojure REPL
Spacemacs can start a REPL for the current Clojure project, calling out to the Clojure CLI tools (`deps.edn`), Leiningen (`project.clj`) or Boot (`boot.build`) based on which configuration file is found in the root of the project.  A prompt is displayed if there are multiple configuration files to choose from.

You can run the following types of REPL's
* `cider-jack-in-clj` for Clojure on the JVM
* `cider-jack-in-cljs` for a ClojureScript REPL
* `cider-jack-in-clj&cljs` for both the above (full stack)

Open or select a Clojure buffer, this can be an `.edn`, `.clj`, `.cljc` or `.cljs` file.

| Key bindings  | Description                      |
|---------------|----------------------------------|
| `, '` or `, m s`  | start a REPL, selecting the type |

Once the REPL starts, [evaluate expressions using the source code buffer](/evaluating-clojure/).


## Most used REPL keybindings

| Key bindings     | Command                                                                 |
|------------------|-------------------------------------------------------------------------|
| `, '` or `, m s` | start a REPL, selecting the type (`sesman-start`)                       |
| `, m b`          | browse active REPL's  (`sesman-browse`)                                 |
| `, m i`          | show information about the current REPL  (`sesman-info`)                |
| `, m q r`        | restart the REPL, quit and jack-in.  (`cider-restart`)                  |
| `, m q q`        | quit the REPL (`cider-quit`)                                            |
| `, e n`          | refresh stale code and load new code into the REPL (`cider-ns-refresh`) |
| `, e N`          | force reload the current namespaces in the REPL (`cider-ns-reload`)     |
