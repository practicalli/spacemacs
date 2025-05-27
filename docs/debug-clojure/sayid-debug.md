# Sayid debug and profile tool

[Sayid](https://github.com/clojure-emacs/sayid), pronounced "siy EED", is an extensive debug and profile tool for Clojure projects. To debug or profile code it must be able to compile or sayid will fail to work.

!!! HINT "cider-debug - a simpler approach"
    [cider-debug](cider-debug.md) is simpler and quicker approach to debugging.

Sayid works by intercepting and recording the inputs and outputs of functions. It can even record function calls that occur inside of functions. The user can select which functions to trace. Functions can be selected individually or by namespace. The recorded data can be displayed, queried and profiled.

Sayid currently has three components:

- core and its supporting namespaces
- nREPL middleware
- an emacs-cider nREPL client

| Key Binding | Description                    |
|-------------|--------------------------------|
| `SPC m d b` | instrument expression at point |
| `SPC m d e` | display last stack trace       |
| `SPC m d r` | reload namespaces              |
| `SPC m d v` | inspect expression at point    |


## Configure Sayid

[Sayid](https://github.com/clojure-emacs/sayid){target=_blank} is an optional package in the Clojure layer for Spacemacs.

To enable sayid, add the following `:variable` to the `clojure` layer in `.spacemacs`

```elisp
     (clojure :variables
              clojure-enable-sayid t)
```


??? "Cider Jack-in approach problematic"
    Clojure CLI projects require the sayid middleware to be included in the `:main-opts` configuration.  Including an alias with the cider-jack-in approach will ignore any `:main-opts` configuration and use its own `:main-opts` injected into the cider-jack-in command

    [Practicalli Clojure CLI Config](https://github.com/practicalli/clojure-cli-config) contains several aliases that can be used with cider-connect

    > For a Leiningen project, sayid can be run from cider-jack-in although the sayid library should be added as a dev-dependency and the Leiningen plugin `{:user {:plugins [[com.billpiel/sayid "0.1.0"]]}}`


## Cider Connect

Clojure CLI projects will need to explicitly include the middleware configuration in the same alias that configures nrepl, e.g.
Cider connect will only work if the sayid nrepl middleware is included in the last alias used to start a REPL

=== "Practicalli Clojure CLI Config"
    The following aliases are defined in [Practicalli Clojure CLI Config](https://practical.li/clojure/clojure-cli/practicalli-config/){target=_blank}

    * `:repl/debug` run basic REPL prompt with sayid, and cider-nrepl middleware
    * `:repl/debug-refactor` run basic REPL prompt with sayid, clj-refactor and cider-nrepl middleware
    * `:repl/rebel-debug` run Rebel rich UI REPL prompt with sayid, and cider-nrepl middleware
    * `:repl/rebel-debug-refactor` run Rebel rich UI REPL prompt with sayid, clj-refactor and cider-nrepl middleware

    Open a terminal in the root of a Clojure project to be debugged with sayid and start a REPL using one of these aliases, e.g.
    ```shell
    clojure -M:repl/rebel-debug
    ```
    Open a Clojure file from the project in Emacs and use the command `, m s` to run `sesman-start` and select `cider-connect-clj`

    A prompt will ask to confirm the host and port of the REPL to connect to (details of which are printed in the terminal when starting the REPL).

    After a few seconds Emacs should be connected.


=== "Alias Definitions"
    Create one or more of these suggested alias definitions to run a REPL in the terminal with Sayid and nREPL and successfully connect to that REPL via cider-connect-clj

    ```clojure
      :repl/debug
      {:extra-deps {nrepl/nrepl        {:mvn/version "0.9.0"}
                    com.billpiel/sayid {:mvn/version "0.1.0"}
                    cider/cider-nrepl  {:mvn/version "0.28.5"}}
       :main-opts  ["-m" "nrepl.cmdline"
                    "--middleware" "[com.billpiel.sayid.nrepl-middleware/wrap-sayid,cider.nrepl/cider-middleware]"
                    "--interactive"]}
    ```

    If also using clj-refactor with Cider, then that nrepl middleware as well as sayid and cider will need to be included

    ```clojure
      :repl/debug-refactor
      {:extra-deps {nrepl/nrepl                   {:mvn/version "0.9.0"}
                    com.billpiel/sayid            {:mvn/version "0.1.0"}
                    cider/cider-nrepl             {:mvn/version "0.28.5"}
                    refactor-nrepl/refactor-nrepl {:mvn/version "3.5.3"}}
       :main-opts  ["-m" "nrepl.cmdline"
                    "--middleware" "[com.billpiel.sayid.nrepl-middleware/wrap-sayid,refactor-nrepl.middleware/wrap-refactor,cider.nrepl/cider-middleware]"
                    "--interactive"]}
    ```

    Now run the REPL process in a terminal with the following command

    ```
    clojure -M:repl/debug
    ```


> Leiningen projects must include the Sayid plugin in order to use Cider Connect.
> ```clojure
> {:user {:plugins [[cider/cider-nrepl "0.25.3"]
>                   [com.billpiel/sayid "0.1.0"]]
>         :dependencies [[nrepl/nrepl "0.7.0"]]}}
> ```

## Learn Sayid

There is a noticeable learn curve to Sayid as it is quite comprehensive, although with a little patience very detailed information about the project can be discovered

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/wkduA4py-qk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>
