# Cider Jack-in to the REPL
Spacemacs can start a REPL for the current Clojure project, calling out to the Clojure CLI tools (`deps.edn`), Leiningen (`project.clj`) or Boot (`boot.build`) based on which configuration file is found in the root of the project.  A prompt is displayed if there are multiple project configuration files to choose from.








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
