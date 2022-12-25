# Connect to a running Repl

You can connect to a REPL started elsewhere, for example the command line with `lein repl`, then connect to it from inside Spacemacs.  You will need to know:

* host name / ip address
* port the repl is listening too

| Spacemacs   | Major mode  | Emacs     | Evil    | Command         |
|-------------|-------------|-----------|---------|-----------------|
| `SPC m s c` | `M-RET s c` | `C-c M-c` | `, s c` | `cider-connect` |


Use the `lein repl` command to run a new REPL on the command line.  Then connect to that REPL using `M-x cider-connect`

![Leiningen REPL on the Command Line](/images/spacemacs-lein-new-spacemacs-workshop.png)



## Configuration Required

If you are going to connect to an external repl from Spacemacs, you will need to add the Leiningen plugin called `cider-nrepl` and the Clojure `tools.nrepl` library.  Rather than add this to all projects, you add these to your Leiningen configuration `~/.lein/profiles.clj` file.  The versions of each library also had to be kept in sync with updates in the Spacemacs Clojure layer.

```clojure
{:dev {:plugins      [[cider/cider-nrepl "0.15.0-SNAPSHOT"]
                       [refactor-nrepl "2.3.0-SNAPSHOT"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]]}}
```

Without this configuration, you will see warning messages in the repl buffer stating that the versions of ... are out of sync.

![Spacemacs - Cider connect - Warning - `cider-repl` & `tools-nrepl` out of sync](/images/spacemacs-cider-connect-warning-versions-out-of-sync.png)
