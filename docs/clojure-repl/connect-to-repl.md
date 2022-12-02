# Connect to a Clojure REPL
Starting a REPL in a terminal is the most resilient way of running a REPL, as if the editor has to be restarted or crashes, the REPL is not affected.

[practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) provides many aliases to configure a REPL to work with other community tools (e.g. data ).  These aliases are easier to manage when running a REPL outside of an editor which automatically injects its own configuration.


## Start a REPL in the terminal
The `clojure` command and `clj` wrapper both start a REPL with a simple terminal interface, `clj` also provides command history.

[practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) defines the `:middleware/clj` alias that includes several libraries required for the nREPL connection between CIDER and the REPL.

Open a terminal in the root directory of a Clojure project and run a non-interactive REPL process
```shell
clojure -M:middleware/cider-clj
```

The REPL will start along with an nREPL server, showing the connection details.

![Clojure Terminal REPL UI with Rebel readline](/images/clojure-repl-terminal-rebel-nrepl.png)

An `.nrepl-port` file is created in the root of the Clojure project, containing the port number the nREPL server is listening upon.


> #### Hint::Using the REPL terminal UI
> For a rich terminal REPL experience, start the REPL with rebel readline as well as nREPL and CIDER libraries.
```
clojure -M:repl/rebel-nrepl
```


## Connect to REPL from CIDER
`SPC f f` to open a file from the Clojure project on the remote server.

```shell
ssh remote
```

`, '` to call `sesman-start` and choose `cider-connect-clj` which should find the right host and port

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-clj.png)

Confirm the host name, typically `localhost` when running the REPL locally

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-host.png)

Confirm the port number the nREPL server is listening too

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-port.png)


Spacemacs is now connected to the REPL and Clojure code can be evaluated in the source code buffers.



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
