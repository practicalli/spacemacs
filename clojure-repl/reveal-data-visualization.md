# Reveal data inspector and visualization tool

[Reveal](https://vlaaad.github.io/reveal/) listens to each expression evaluated in the REPL and pushes the results to a visual UI.  Reveal allows inspection of the REPL results, visualisation data using VegaLite graphics, sql browser and [many more features](https://vlaaad.github.io/reveal/#features).

Reveal can also be used as a `tap>` source to proved more powerful manual debugging workflow from any Clojure REPL.

[Practicalli Clojure - data browsers section](http://practical.li/clojure/clojure-cli/data-browsers/reveal.html) has more details on using reveal with other editors and Rebel readline rich terminal UI.

![Reveal animated gif](https://vlaaad.github.io/assets/reveal/demo.gif)

{% tabs practicalli="practicalli/clojure-deps-edn", manual="Manually add Alias" %}

{% content "practicalli" %}

[practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) contains a range of aliases to run Reveal with different themes, nREPL support for Clojure editors and with Rebel Readline terminal UI.

* `:inspect/reveal-cider` - Reveal with headless REPL, starting nREPL server for [Clojure aware editors](https://practical.li/clojure/clojure-editors/)
* `:inspec/reveal-light-cider` - as above with light theme and 32 point Ubuntu Mono font


{% content "manual" %}

Define aliases either in the project `deps.edn` file or the user level `deps.edn` file.

Run Reveal with a REPL that also starts an nREPL server, supporting a connection from Clojure aware editors

```clojure
  ;; Reveal REPL with nrepl server and Emacs CIDER specific middleware
  :inspect/reveal-cider
  {:extra-deps {vlaaad/reveal                 {:mvn/version "1.3.265"}
                nrepl/nrepl                   {:mvn/version "0.9.0"}
                cider/cider-nrepl             {:mvn/version "0.27.4"}
                refactor-nrepl/refactor-nrepl {:mvn/version "3.1.0"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[vlaaad.reveal.nrepl/middleware,refactor-nrepl.middleware/wrap-refactor,cider.nrepl/cider-middleware]"]}


  ;; Light version of :inspect/reveal-cider
  :inspect/reveal-light-cider
  {:extra-deps {vlaaad/reveal                 {:mvn/version "1.3.265"}
                nrepl/nrepl                   {:mvn/version "0.9.0"}
                cider/cider-nrepl             {:mvn/version "0.27.4"}
                refactor-nrepl/refactor-nrepl {:mvn/version "3.1.0"}}
   :jvm-opts   ["-Dvlaaad.reveal.prefs={:theme,:light,:font-family,\"https://ff.static.1001fonts.net/u/b/ubuntu.mono.ttf\",:font-size,32}"]
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[vlaaad.reveal.nrepl/middleware,refactor-nrepl.middleware/wrap-refactor,cider.nrepl/cider-middleware]"]}
```

{% endtabs %}


Run Reveal with a simple terminal REPL using the `:inspect/reveal` alias, or `:inspect/reveal-light` with a light theme and a 32 point Ubuntu Mono font.

```bash
clojure -X:inspect/reveal
```

Run Reveal and start an nREPL server that allows Clojure aware editors to connect.  In Spacemacs `, '` calls `sesman-start` and selecting `cider-connnect-clj` will connect the the nREPL server started by the alias.

```bash
clojure -X:inspect/reveal-nrepl
```

## Run Reveal REPL with nREPL server for cider-connect

The Reveal REPL can be connected to with with nREPL, socket or prepl connection and use from any [Clojure aware editor]([Clojure aware editors](https://practical.li/clojure/clojure-editors/)).

`:inspect/reveal-nrepl` runs reveal with an nREPL server and the cider-nrepl middleware, providing a connection for Clojure editors to connect to the REPL (CIDER, Calva, Conjure, Cursive, etc.)


## Cider jack-in and reveal

See the [Reveal section of Practicalli Clojure](https://practicalli.github.io/clojure-staging/clojure-cli/data-browsers/reveal.html#using-reveal-with-nrepl-editors) for full details, including how to set up a `.dir-locals.el` configuration.

`:inspect/reveal-cider` alias contains Reveal REPL with nrepl server and Emacs CIDER specific middleware

`C-u cider-jack-in-clj` in CIDER to start a reveal REPL  (`SPC u , '` in Spacemacs)

Edit the jack-in command by deleting the all the configuration after the `clojure` command and add the alias

```
clojure -M:inspect/reveal-cider
```

### Configure theme & font

Add a custom theme and font via the `-J` command line option or create an alias using `:inspect/reveal-light-cider` as an example.

```shell
clojure -M:inspect/reveal -J-Dvlaaad.reveal.prefs='{:theme :light :font-family "Ubuntu Mono" :font-size 32}'
```
