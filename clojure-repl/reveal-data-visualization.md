# Reveal data inspector and visualization tool

[Reveal](https://vlaaad.github.io/reveal/) listens to each expression evaluated in the REPL and pushes the results to a visual UI.  Reveal allows inspection of the REPL results, visualisation data using VegaLite graphics, sql browser and [many more features](https://vlaaad.github.io/reveal/#features).

Reveal can also be used as a `tap>` source to proved more powerful manual debugging workflow from any Clojure REPL.

![Reveal animated gif](https://vlaaad.github.io/assets/reveal/demo.gif)

{% tabs practicalli="practicalli/clojure-deps-edn", manual="Manually add Alias" %}

{% content "practicalli" %}

[practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) contains a range of aliases to run Reveal with different themes, nREPL support for Clojure editors and with Rebel Readline terminal UI.

* `:inspect/reveal` - visualisation with terminal REPL.
* `:inspect/reveal-light` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-nrepl` - visualization for [Clojure aware editors](https://practical.li/clojure/clojure-editors/) via an nrepl server
* `:inspec/reveal-light-nrepl` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-cider` - Reveal with headless REPL, starting nREPL server for [Clojure aware editors](https://practical.li/clojure/clojure-editors/)
* `:inspec/reveal-light-cider` - as above with light theme and 32 point Ubuntu Mono font
* `:repl/rebel-reveal` - Rebel readline rich terminal UI and Reveal visual UI
* `:repl/rebel-reveal-light` - as above with light theme and 32 point Ubuntu Mono font


{% content "manual" %}

Define aliases either in the project `deps.edn` file or the user level `deps.edn` file.

Aliases to run a REPL with Reveal visual UI.

```clojure
  :inspect/reveal
  {:extra-deps {vlaaad/reveal {:mvn/version "1.3.265"}}
   :exec-fn    vlaaad.reveal/repl
   :main-opts  ["-m" "vlaaad.reveal" "repl"]}

  :inspect/reveal-light
  {:extra-deps {vlaaad/reveal {:mvn/version "1.3.265"}}
   :exec-fn    vlaaad.reveal/repl
   :jvm-opts   ["-Dvlaaad.reveal.prefs={:theme,:light,:font-family,\"https://ff.static.1001fonts.net/u/b/ubuntu.mono.ttf\",:font-size,32}"]
   :main-opts  ["-m" "vlaaad.reveal" "repl"]}
```

Run Reveal with a REPL that also starts an nREPL server, supporting a connection from Clojure aware editors

```clojure

  ;; Reveal REPL with nrepl server, connect to from a Clojure aware editor
  ;; clj -M:inspect/reveal-nrepl
  :inspect/reveal-nrepl
  {:extra-deps {vlaaad/reveal {:mvn/version "1.3.265"}
                nrepl/nrepl   {:mvn/version "0.9.0"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[vlaaad.reveal.nrepl/middleware]"]}

  ;; Light version of :inspect/reveal-nrepl
  :inspect/reveal-light-nrepl
  {:extra-deps {vlaaad/reveal {:mvn/version "1.3.265"}
                nrepl/nrepl   {:mvn/version "0.9.0"}}
   :jvm-opts   ["-Dvlaaad.reveal.prefs={:theme,:light,:font-family,\"https://ff.static.1001fonts.net/u/b/ubuntu.mono.ttf\",:font-size,32}"]
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[vlaaad.reveal.nrepl/middleware]"]}

  ;; Reveal REPL with nrepl server and Emacs CIDER specific middleware
  :inspect/reveal-cider
  {:extra-deps {vlaaad/reveal                 {:mvn/version "1.3.265"}
                nrepl/nrepl                   {:mvn/version "0.9.0"}
                cider/cider-nrepl             {:mvn/version "0.27.4"}
                refactor-nrepl/refactor-nrepl {:mvn/version "3.1.0"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[vlaaad.reveal.nrepl/middleware,refactor-nrepl.middleware/wrap-refactor,cider.nrepl/cider-middleware]"]}
```

It is possible to use Rebel Readline with Reveal, although the alias is much more complex.  `:main-opts` is used to evaluate and expression that requires the relevant libraries and call the Rebel and Require functions in the correct order.

```clojure
  ;; rebel readline with reveal data visualization
  :repl/rebel-reveal
  {:extra-deps
   {vlaaad/reveal              {:mvn/version "1.3.265"}
    com.bhauman/rebel-readline {:mvn/version "0.1.4"}}
   :main-opts ["-e" "(require,'rebel-readline.core),(require,'rebel-readline.clojure.line-reader),(require,'rebel-readline.clojure.service.local),(require,'rebel-readline.clojure.main),(require,'vlaaad.reveal)(rebel-readline.core/with-line-reader,(rebel-readline.clojure.line-reader/create,(rebel-readline.clojure.service.local/create)),(vlaaad.reveal/repl,:prompt,(fn,[]),:read,(rebel-readline.clojure.main/create-repl-read)))"]}
```

> The `:repl/rebel-reveal` example is not a recommended approach.  Ideally changes to the respective projects would be made to make them work together in a simpler way.

{% endtabs %}


## Commands cheetsheet

| Command                                 | Description                                                   |
|-----------------------------------------|---------------------------------------------------------------|
| `clojure -X:inspect/reveal`             | start a Reveal repl with data visualization window            |
| `clojure -X:inspect/reveal-light`       | as above with light theme and 32 point Ubuntu Mono font       |
| `clojure -M:inspect/reveal-nrepl`       | reveal with nrepl server to support Clojure aware editors     |
| `clojure -M:inspect/reveal-light-nrepl` | as above with light theme and large font                      |
| `clojure -M:repl/rebel-reveal`          | Rebel terminal UI REPL with Reveal - light theme & large font |


## Running a REPL with Reveal

Run Reveal with a simple terminal REPL using the `:inspect/reveal` alias, or `:inspect/reveal-light` with a light theme and a 32 point Ubuntu Mono font.

```bash
clojure -X:inspect/reveal
```

Run Reveal and start an nREPL server that allows Clojure aware editors to connect.  In Spacemacs `, '` calls `sesman-start` and selecting `cider-connnect-clj` will connect the the nREPL server started by the alias.

```bash
clojure -X:inspect/reveal-nrepl
```

## Connecting nREPL based editors

The Reveal REPL can be connected to with with nREPL, socket or prepl connection and use from any [Clojure aware editor]([Clojure aware editors](https://practical.li/clojure/clojure-editors/)).

`:inspect/reveal-nrepl` to run reveal with an nREPL server, providing a connection for Clojure editors to connect to the REPL (CIDER, Calva, Conjure, Cursive, etc.)

Alternatively, use the command `clojure -M:inspect/reveal:repl/nrepl` add an `.nrepl.edn` file to the root of a project to include the Reveal middleware

```
{:middleware [vlaaad.reveal.nrepl/middleware]}
```


## Cider jack-in and reveal

See the [Reveal section of Practicalli Clojure](https://practicalli.github.io/clojure-staging/clojure-cli/data-browsers/reveal.html#using-reveal-with-nrepl-editors) for full details, including how to set up a `.dir-locals.el` configuration.

`:inspect/reveal-cider` alias contains Reveal REPL with nrepl server and Emacs CIDER specific middleware

`C-u cider-jack-in-clj` in CIDER to start a reveal REPL  (`SPC u , '` in Spacemacs)

Edit the jack-in command by deleting the all the configuration after the `clojure` command and add the alias
```
clojure -M:inspect/reveal-cider
```

`:inspect/reveal-light-cider` is a light version of the above.


### Running different types of repl

Using Clojure exec `-X` flag, the default repl function can be over-ridden on the command line, supplying the `io-prepl` or `remote-prepl` functions.

* `clojure -X:inspect/reveal io-prepl :title '"I am a prepl repl"`
* `clojure -X:inspect/reveal remote-prepl :title '"I am a remote prepl repl"'`

### Configure theme & font

Add a custom theme and font via the `-J` command line option or create an alias using `:inspect/reveal-light` as an example.

```shell
clojure -M:inspect/reveal -J-Dvlaaad.reveal.prefs='{:theme :light :font-family "Ubuntu Mono" :font-size 32}'
```

### Rebel Readline & Reveal: Add Reveal as tap> source

Evaluate `(add-tap ((requiring-resolve 'vlaaad.reveal/ui)))` when using Rebel Readline to add Reveal as a tap source, showing `(tap> ,,,)` expressions in the reveal window, eg. `(tap> (map inc [1 2 3 4 5]))`.

[Practicalli Clojure - data browsers section](http://practical.li/clojure/clojure-cli/data-browsers/reveal.html) has more details on using reveal.
