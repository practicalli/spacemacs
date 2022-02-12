## Configure Unit Testing for deps.edn projects

Cider test runner is a convenient way to run Clojure unit tests, using the same REPL for evaluating source code.

The `test` directory must be included in the classpath when running the REPL, as test code is evaluated in the running REPL.

An alias should be used to include the `test` directory.  The `test` path should not be part of the main `:paths` configuration, otherwise test code would be included in the jar or uberjar package and deployment.

A `.dir-locals.el` file can include any number of aliases when using Cider jack-in.


{% tabs practicalli="practicalli/clojure-deps-edn", deps="Manual deps.edn projects" %}

{% content "practicalli" %}

## Practicalli user level aliases

[practicalli/clojure-deps-edn]({{ book.P9IClojureDepsEdnInstall }}) user-level configuration contains several aliases for Clojure and ClojureScript test runners, each alias includes the `test` directory as an `:extra-path`.

`:env/test` adds the `test` directory to the class path and enables CIDER test runner to find the test code.

`:repl/cider` includes the nrepl and cider-nrepl libraries and starts an nREPL server connected to the REPL

`:repl/rebel` runs Rebel Readline, providing a rich terminal UI for the REPL


{% content "deps" %}

## Add test directory

Add the `:env/dev` alias to the project `deps.edn` file or user level configuration.

```clojure
:aliases
{
  :env/test
  {:extra-paths ["test"]}
}
```

## Terminal REPL UIs with nREPL

Use `cider-connect` to connect to the Clojure REPL process started in a terminal window with the following command:

```bash
clojure -M:env/test:repl/cider-clj
```

Use the `:repl/rebel-nrepl` alias to also run a Rebel UI for the REPL in the terminal.

```bash
clojure -M:env/test:repl/rebel-nrepl
```


## Alias to run a simple Terminal UI REPL with nREPL support

Run a REPL using nREPL server that starts an nREPL server, enabling CIDER to connect via `cider-connect-clj`

```clojure
 :repl/cider
  {:extra-deps {nrepl/nrepl                {:mvn/version "0.9.0"}
                cider/cider-nrepl          {:mvn/version "0.27.4"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[cider.nrepl/cider-middleware]"
                "-i"]}
```

> #### Hint::Headless REPL
> Remove the `"-i"` if a headless (non-interactive) REPL is required, useful if only interacting with Clojure code via the nREPL connected editor.


## Alias to run a Rebel REPL with nREPL support

Rebel readline provides a rich terminal UI with nrepl server , enabling CIDER to connect via `cider-connect-clj`

```clojure
  :repl/rebel
  {:extra-deps {nrepl/nrepl                {:mvn/version "0.9.0"}
                cider/cider-nrepl          {:mvn/version "0.27.4"}
                com.bhauman/rebel-readline {:mvn/version "0.1.4"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[cider.nrepl/cider-middleware]"
                "-i"
                "-f" "rebel-readline.main/-main"]}
```

> #### Hint:: practicalli/clojure-deps-edn contains common tools and aliases
> [practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) contains aliases for all aspects of Clojure development with the CLI tools.

{% endtabs %}


## Using Cider Connect

Start the REPL in a terminal including the `test` directory and starting an nREPL server for CIDER to connect too.

```bash
clojure -M:env/test:repl/cider
```

Alternatively, use a rich terminal UI for the REPL using Rebel Readline which will also start an nREPL server for Cider to connect too.

```bash
clojure -M:env/test:repl/rebel
```


## Using CIDER jack-in

`.dir-locals.el` file can define aliases which are always included during `cider-jack-in`.

Add the variable `cider-clojure-cli-aliases` with a names of one or more alias names, which are from either the project `deps.edn` file or the user level `deps.edn` configuration.

`SPC p e` creates or opens an existing `.dir-locals.el` file for the current project.

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . ":env/test"))))
```

Remember to `SPC b R` (`revert-buffer`) on an existing project buffer, or open a file from the current project, to force Emacs to load in any changes to a `.dir-locals.el` file.

> #### Hint::Project configuration with `.dir-locals.el`
> [Project level configuration](/clojure-projects/project-configuration.md) section contains many example configurations that can be set via `.dir-locals.el` file.  Remember to `revert-buffer` an existing project buffer or open a new buffer to load in changes from the `.dir-locals.el` file.

### Edit the jack-in command

`SPU u , '` uses the Emacs universal argument with `sesman-start` and displays the command line to be run.

Add `:env/test` directly after the `-M` flag and before the `:cider/nrepl` alias

![Spacemacs CIDER configuration - add Clojure CLI tools alias to cider-jack-in command](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-alias-env-test.png)

> `SPC u` is the Spacemacs equivalent of `C-u` in Emacs.


### Checking the jack-in command

`SPC b m` opens the messages buffer and the full command should be shown in the messages history.

![Spacemacs Clojure - Cider jack-in command in message buffer](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-jack-in-command-in-message-buffer.png)
