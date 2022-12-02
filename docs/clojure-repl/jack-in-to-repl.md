# Cider Jack-in to the REPL

`, '` or `, m s` (`sesman-start`)  and select a `cider-jack-in` command to start a REPL process

## What is jack-in

Jack-in will start a new REPL process and automatically connect to that process from the editor.

Jack-in will call either the `clojure` or `lein` command to start the REPL process, based on what project configuration files are found (`project.clj` for Leiningen and `deps.edn` for Clojure CLI) in the root of the current project. A prompt is displayed if there are multiple project configuration files to choose from.

Jack-in ensures the REPL process is started with the libraries and middleware required by CIDER.  Then the rest of the jack-in process is the same as connect, but done so automatically.


## Customise jack-in

`SPC u , m s` opens the jack-in command in the minibuffer and that command can be edited to customise how the Clojure REPL process starts.

[Clojure CLI jack-in customisation](clojure-cli-jack-in-configure.md) are used to add development-time only libraries and paths

Leiningen controls the REPL startup process, often using profiles.  Read [the Leiningen tutorial for detailed examples](https://github.com/technomancy/leiningen/blob/stable/doc/TUTORIAL.md).

> [A `user` namespace](https://practical.li/clojure/clojure-cli/projects/configure-repl-startup.html) allows for further customisation of the REPL startup


## Multiple project configuration files

If both a `project.clj` file and a `deps.edn` file exist in the root of a project, Cider jack-in will prompt for the command to use

Use a `.dir-locals.el` file to set the command that Cider jack-in will use each time

For Leiningen:

```
((clojure-mode (cider-preferred-build-tool . clojure-cli)))
```

For Clojure CLI:

```
((clojure-mode (cider-preferred-build-tool . lein)))
```



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
