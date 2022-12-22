# Cider Jack-in

++comma++ ++single-quote++ or ++comma++ ++"m"++ ++"s"++ (`sesman-start`) and select a `cider-jack-in` command to start a REPL process

Cider Jack-in will start a new REPL process and automatically connect to that process from the editor.

Jack-in will call either the `clojure` or `lein` command to start the REPL process, based on what project configuration files are found (`project.clj` for Leiningen and `deps.edn` for Clojure CLI) in the root of the current project. A prompt is displayed if there are multiple project configuration files to choose from.

Jack-in ensures the REPL process is started with the libraries and middleware required by CIDER.  Then the rest of the jack-in process is the same as connect, but done so automatically.


## Jack-in Configuration

++spc++ ++"u"++ ++comma++ ++"m"++ ++"s"++ opens the jack-in command in the minibuffer which can be edited to customise how the Clojure REPL process starts, e.g. adding Clojure CLI aliases to include libraries and tools for development.

![Spacemacs Clojure - Edit cider-jack-in command to add Clojure CLI aliases](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-command-line-edit.png)

Clojure CLI aliases should be added between the `-M` execution flag and the `:cider/nrepl` alias.

![Spacemacs Clojure - Edit cider-jack-in command, adding Clojure aliases](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-command-line-edit-custom-aliases.png)


### Deconstructing the command line

`cider-jack-in` commands include the dependencies to start a REPL process which the Emacs Cider process can connect to, using nREPL.

`-Sdeps` adds the required library dependencies to start an nREPL server (`nrepl/nrepl`) and connect to that nREPL server from Cider (`cider/cider-nrepl`).

`:aliases` defines the `:cider/nrepl` alias, defining that the `clojure` command should run `nrepl.commandline/-main` to start an nREPL server process, along with the Cider middleware to connect to that nREPL server process


### Adding aliases

Aliases can be used from the project `deps.edn` file or the user `deps.edn` file, e.g [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn)

`:extra-paths` and `:extra-deps` configuration in aliases is used by the Cider jack-in command line.

`:main-opts` entries in aliases are ignored when `:cider/nrepl` is kept as last alias in the chain.

??? WARNING "No aliases after :cider/nrepl"
    Placing aliases after `:cider/nrepl` will prevent cider-jack-in working correctly (or at all), unless the last alias in the chain also includes the same libraries and configuration as the `:cider/nrepl` alias


## .dir-locals.el to configure REPL startup

Cider variables can be used to customize the REPL startup via a `.dir-locals.el` file in the root of the Clojure project.

`SPC p e` creates or opens a `.dir-locals.el` file in the root of the project.  A helm prompt also allows for adding entries into the file.

Add the `:env/test` alias to `cider-clojure-cli-aliases` and the paths and libraries defined aliases will always be included when running a REPL from Spacemacs

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . ":env/test"))))
```

??? INFO "Add Alias names only"
    Execution flags, `-M`,`-P`,`-T`,`-X`,`-A` are automatically removed from the `cider-clojure-cli-aliases` value by the Cider jack-in code.

    The previously used variable `cider-clojure-cli-global-options` is deprecated and may cause issues with cider-jack-in that prevent the REPL from starting.

??? HINT "Custom user namespace for more REPL customisation"
    [A `user` namespace](https://practical.li/clojure/clojure-cli/projects/configure-repl-startup.html){target=_blank} allows for further customisation of the REPL startup


## Multiple project configuration files

If both a `project.clj` file and a `deps.edn` file exist in the root of a project, Cider jack-in will prompt for the command to use

Use a `.dir-locals.el` file to set the command that Cider jack-in will use each time

=== "Clojure CLI"
    ```
    ((clojure-mode (cider-preferred-build-tool . lein)))
    ```

=== "Leiningen"
    ```
    ((clojure-mode (cider-preferred-build-tool . clojure-cli)))
    ```


## Common REPL start / restart keybindings

| Key bindings                                            | Command                                                                 |
|---------------------------------------------------------|-------------------------------------------------------------------------|
| ++comma++ ++single-quote++ or ++comma++ ++"m"++ ++"s"++ | start a REPL, selecting the type (`sesman-start`)                       |
| ++comma++ ++"m"++ ++"b"++                               | browse active REPL's  (`sesman-browse`)                                 |
| ++comma++ ++"m"++ ++"i"++                               | show information about the current REPL  (`sesman-info`)                |
| ++comma++ ++"m"++ ++"q"++ ++"r"++                       | restart the REPL, quit and jack-in.  (`sesman-restart`)                 |
| ++comma++ ++"m"++ ++"q"++ ++"q"++                       | quit the REPL (`sesman-quit`)                                           |
| ++comma++ ++"m"++ ++"n"++                               | refresh stale code and load new code into the REPL (`cider-ns-refresh`) |
| ++comma++ ++"m"++ ++n++                                 | force reload the current namespaces in the REPL (`cider-ns-reload`)     |
