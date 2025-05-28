# Configure Cider Test runner

Cider test runner provides a convenient way to run Clojure unit tests from within Emacs.

Source and test code is evaluated and the Cider test runner calls the `deftest` functions to run all the tests.  The results of the test run are shown in Emacs, along with a failure report if appropriate.

The `test` directory must be included in the classpath when running the REPL, otherwise the CIDER test runner will not find the `deftest` definitions.

??? INFO "Test directory should only added via an alias"
    The `test` path should not be part of the main `:paths` configuration, otherwise test code would be included in the jar or uberjar package and deployment.

??? HINT "Use .dir-locals.el to set default aliases when starting the REPL"
    A `.dir-locals.el` is an [:fontawesome-solid-book-open: Emacs project configuration file](/spacemacs/clojure-development/project-configuration/) which can set any number of aliases that are automatically included when calling the Cider jack-in command.

    ```elisp
    ((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                      (cider-clojure-cli-aliases . ":env/test"))))
    ```


## Aliases

Use an alias to include the `test` directory and libraries that support testing.

[:fontawesome-solid-book-open: Practicalli Clojure CLI Config](https://practical.li/clojure/clojure-cli/install/community-tools.html) contains several aliases to support the running of tests with the CIDER test runner.


=== "Practicalli Clojure CLI aliases"

    `:test/env` adds the `test` directory to the class path and enables CIDER test runner to find the test code.  This is the only alias required if using Cider test runner.

    `:lib/kaocha` add the kaocha test runner library to the class path, so [kaocha can be used instead of CIDER test runner](/testing/kaocha-test-runner.md).


    Other aliases can be used with the `:test/env` alias to support cider-connect approach:

    `:repl/cider` include the nrepl and cider-nrepl libraries and starts an nREPL server connected to the REPL

    `:repl/rebel` run Rebel Readline, providing a rich terminal UI for the REPL



=== "Alias definition"

    Add the `test` directory to the classpath when starting the REPL using a `:test/env` alias added to the project `deps.edn` file.

    ```clojure
    :aliases
    {
      :test/env
      {:extra-paths ["test"]}
    }
    ```


## CIDER connect

Use `cider-connect` to connect Emacs CIDER to the Clojure REPL process via its nREPL server, started in a terminal window with the following command:

```shell
clojure -M:test/env:repl/basic
```

Or for a richer terminal UI experience, use the `:repl/rebel` alias to start a REPL & nREPL server:

```shell
clojure -M:test/env:repl/rebel-nrepl
```


## Alias to run a simple Terminal UI REPL with nREPL support

Run a REPL using nREPL server that starts an nREPL server, enabling CIDER to connect via `cider-connect-clj`

```clojure
  :repl/basic
  {:extra-deps {nrepl/nrepl       {:mvn/version "1.3.1"}
                cider/cider-nrepl {:mvn/version "0.55.7"}}
   :main-opts  ["--main" "nrepl.cmdline"
                "--middleware" "[cider.nrepl/cider-middleware]"
                "--interactive"]}
```

!!! HINT "Headless REPL"
    Remove the `"-i"` if a headless (non-interactive) REPL is required, useful if only interacting with Clojure code via the nREPL connected editor.


## Alias to run a Rebel REPL with nREPL support

Rebel readline provides a rich terminal UI with nrepl server , enabling CIDER to connect via `cider-connect-clj`

```clojure
  :repl/rebel
  {:extra-deps {nrepl/nrepl                {:mvn/version "1.3.1"}
                cider/cider-nrepl          {:mvn/version "0.55.7"}
                com.bhauman/rebel-readline {:mvn/version "0.1.5"}}
   :main-opts  ["--eval" "(apply require clojure.main/repl-requires)"
                "--main" "nrepl.cmdline"
                "--middleware" "[cider.nrepl/cider-middleware]"
                "--interactive"
                "-f" "rebel-readline.main/-main"]}
```

!!! HINT "practicalli/clojure-cli-config contains common tools and aliases"
    [practicalli/clojure-cli-config](https://practical.li/clojure/clojure-cli/install/community-tools.html) contains aliases for all aspects of Clojure development with the CLI tools.



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

!!! HINT "Project configuration with `.dir-locals.el`"
    [Project level configuration](/spacemacs/clojure-projects/project-configuration.md) section contains many example configurations that can be set via `.dir-locals.el` file.

    Remember to `revert-buffer` an existing project buffer or open a new buffer to load in changes from the `.dir-locals.el` file.


### Edit the jack-in command

`SPU u , '` uses the Emacs universal argument with `sesman-start` and displays the command line to be run.

Add `:test/env` directly after the `-M` flag and before the `:cider/nrepl` alias

![Spacemacs CIDER configuration - add Clojure CLI tools alias to cider-jack-in command](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-alias-env-test.png)

> `SPC u` is the Spacemacs equivalent of `C-u` in Emacs.


### Checking the jack-in command

`SPC b m` opens the messages buffer and the full command should be shown in the messages history.

![Spacemacs Clojure - Cider jack-in command in message buffer](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-jack-in-command-in-message-buffer.png)
