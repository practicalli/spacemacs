# Reveal data inspector and visualization tool

> #### TODO::work in progress, sorry

[Reveal](https://vlaaad.github.io/reveal/) - run a Terminal REPL with data visualisation or connect with nREPL, socket or prepl connection and use from any [Clojure aware editor]([Clojure aware editors](https://practical.li/clojure/clojure-editors/)).
Reveal can also used as a `tap>` source for more powerful manual debugging.

* `:inspect/reveal` - visualisation with terminal REPL.
* `:inspect/reveal-light` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-nrepl` - visualization for [Clojure aware editors](https://practical.li/clojure/clojure-editors/) via an nrepl server
* `:inspec/reveal-light-nrepl` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-nrepl-cider` - visualization tool for Emacs Cider / Spacemacs / VSCode Calva
* `:inspec/reveal-light-nrepl-cider` - as above with light theme and 32 point Ubuntu Mono font

| Command                                       | Description                                                                        |
|-----------------------------------------------|------------------------------------------------------------------------------------|
| `clojure -M:inspect/reveal`                   | start a Reveal repl with data visualization window (clojure.main)                  |
| `clojure -M:inspect/reveal-light`             | as above with light theme and large font                                           |
| `clojure -X:inspect/reveal`                   | start a Reveal repl with data visualization window (clojure exec)                  |
| `clojure -X:inspect/reveal-light`             | as above with light theme and large font                                           |
| `clojure -M:inspect/reveal-nrepl`             | Start nrepl server to use Cider / Calva editors with reveal                        |
| `clojure -X:inspect/reveal-light-nrepl`       | as above with light theme and large font                                           |
| `clojure -M:inspect/reveal-rebel`             | Start a Rebel REPL with Reveal Visualizations                                      |
| `clojure -M:inspect/reveal-light-rebel`       | Start a Rebel REPL with Reveal Visualizations & light theme                        |
| `clojure -M:inspect/reveal:repl/rebel`        | Start a Rebel REPL with Reveal dependency. Add reveal as tap> source               |
| `clojure -M:inspect/reveal-light:repl/rebel** | Start a Rebel REPL with Reveal dependency & light theme. Add reveal as tap> source |

**Connecting nREPL based editors**
Use the `:inspect/reveal-nrepl` alias when running the REPL, either in the terminal or via an nREPL based editor (CIDER, Calva, Conjure, Cursive, etc.)

Alternatively, add an `.nrepl.edn` file to the root of a project to include the Reveal middleware
```
{:middleware [vlaaad.reveal.nrepl/middleware]}
```

**Cider jack-in and reveal**
See the [Reveal section of Practicalli Clojure](https://practicalli.github.io/clojure-staging/clojure-cli/data-browsers/reveal.html#using-reveal-with-nrepl-editors) for full details, including how to set up a `.dir-locals.el` configuration.

`:inspect/reveal-nrepl-cider` alias contains Reveal REPL with nrepl server and Emacs CIDER specific middleware

`C-u cider-jack-in-clj` in CIDER to start a reveal REPL  (`SPC u , '` in Spacemacs)

Edit the jack-in command by deleting the all the configuration after the `clojure` command and add the alias
```
clojure -M:inspect/reveal-nrepl-cider
```

`:inspect/reveal-nrepl-cider` is a light version of the above.


**Running different types of repl**

Using Clojure exec `-X` flag, the default repl function can be over-ridden on the command line, supplying the `io-prepl` or `remote-prepl` functions.

* `clojure -X:inspect/reveal io-prepl :title '"I am a prepl repl"`
* `clojure -X:inspect/reveal remote-prepl :title '"I am a remote prepl repl"'`

**Configure theme & font**

Add a custom theme and font via the `-J` command line option or create an alias using `:inspect/reveal-light` as an example.

```shell
clojure -M:inspect/reveal -J-Dvlaaad.reveal.prefs='{:theme :light :font-family "Ubuntu Mono" :font-size 32}'
```

**Rebel Readline & Reveal: Add Reveal as tap> source**

Evaluate `(add-tap ((requiring-resolve 'vlaaad.reveal/ui)))` when using Rebel Readline to add Reveal as a tap source, showing `(tap> ,,,)` expressions in the reveal window, eg. `(tap> (map inc [1 2 3 4 5]))`.

[Practicalli Clojure - data browsers section](http://practical.li/clojure/clojure-cli/data-browsers/reveal.html) has more details on using reveal.



## Data Inspectors

REPL driven data inspectors and `tap>` sources for visualizing data.


### Reveal data inspector and visualization tool
[Reveal](https://vlaaad.github.io/reveal/) - run a Terminal REPL with data visualisation or connect with nREPL, socket or prepl connection and use from any [Clojure aware editor]([Clojure aware editors](https://practical.li/clojure/clojure-editors/)).
Reveal can also used as a `tap>` source for more powerful manual debugging.

* `:inspect/reveal` - visualisation with terminal REPL.
* `:inspect/reveal-light` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-nrepl` - visualization for [Clojure aware editors](https://practical.li/clojure/clojure-editors/) via an nrepl server
* `:inspec/reveal-light-nrepl` - as above with light theme and 32 point Ubuntu Mono font
* `:inspect/reveal-nrepl-cider` - visualization tool for Emacs Cider / Spacemacs / VSCode Calva
* `:inspec/reveal-light-nrepl-cider` - as above with light theme and 32 point Ubuntu Mono font

| Command                                       | Description                                                                        |
|-----------------------------------------------|------------------------------------------------------------------------------------|
| `clojure -M:inspect/reveal`                   | start a Reveal repl with data visualization window (clojure.main)                  |
| `clojure -M:inspect/reveal-light`             | as above with light theme and large font                                           |
| `clojure -X:inspect/reveal`                   | start a Reveal repl with data visualization window (clojure exec)                  |
| `clojure -X:inspect/reveal-light`             | as above with light theme and large font                                           |
| `clojure -M:inspect/reveal-nrepl`             | Start nrepl server to use Cider / Calva editors with reveal                        |
| `clojure -X:inspect/reveal-light-nrepl`       | as above with light theme and large font                                           |
| `clojure -M:inspect/reveal-rebel`             | Start a Rebel REPL with Reveal Visualizations                                      |
| `clojure -M:inspect/reveal-light-rebel`       | Start a Rebel REPL with Reveal Visualizations & light theme                        |
| `clojure -M:inspect/reveal:repl/rebel`        | Start a Rebel REPL with Reveal dependency. Add reveal as tap> source               |
| `clojure -M:inspect/reveal-light:repl/rebel** | Start a Rebel REPL with Reveal dependency & light theme. Add reveal as tap> source |

**Connecting nREPL based editors**
Use the `:inspect/reveal-nrepl` alias when running the REPL, either in the terminal or via an nREPL based editor (CIDER, Calva, Conjure, Cursive, etc.)

Alternatively, add an `.nrepl.edn` file to the root of a project to include the Reveal middleware
```
{:middleware [vlaaad.reveal.nrepl/middleware]}
```

**Cider jack-in and reveal**
See the [Reveal section of Practicalli Clojure](https://practicalli.github.io/clojure-staging/clojure-cli/data-browsers/reveal.html#using-reveal-with-nrepl-editors) for full details, including how to set up a `.dir-locals.el` configuration.

`:inspect/reveal-nrepl-cider` alias contains Reveal REPL with nrepl server and Emacs CIDER specific middleware

`C-u cider-jack-in-clj` in CIDER to start a reveal REPL  (`SPC u , '` in Spacemacs)

Edit the jack-in command by deleting the all the configuration after the `clojure` command and add the alias
```
clojure -M:inspect/reveal-nrepl-cider
```

`:inspect/reveal-nrepl-cider` is a light version of the above.


**Running different types of repl**

Using Clojure exec `-X` flag, the default repl function can be over-ridden on the command line, supplying the `io-prepl` or `remote-prepl` functions.

* `clojure -X:inspect/reveal io-prepl :title '"I am a prepl repl"`
* `clojure -X:inspect/reveal remote-prepl :title '"I am a remote prepl repl"'`

**Configure theme & font**

Add a custom theme and font via the `-J` command line option or create an alias using `:inspect/reveal-light` as an example.

```shell
clojure -M:inspect/reveal -J-Dvlaaad.reveal.prefs='{:theme :light :font-family "Ubuntu Mono" :font-size 32}'
```

**Rebel Readline & Reveal: Add Reveal as tap> source**

Evaluate `(add-tap ((requiring-resolve 'vlaaad.reveal/ui)))` when using Rebel Readline to add Reveal as a tap source, showing `(tap> ,,,)` expressions in the reveal window, eg. `(tap> (map inc [1 2 3 4 5]))`.

[Practicalli Clojure - data browsers section](http://practical.li/clojure/clojure-cli/data-browsers/reveal.html) has more details on using reveal.
