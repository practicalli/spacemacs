## Clojure CLI - Jack-in Configuration

`SPC u ,'` or `SPC u , m s` opens the minibuffer with the full command to start the REPL process, to enable customisation of the REPL startup.

The command can be edited in the minibuffer, typically adding (or removing) Clojure CLI aliases.

![Spacemacs Clojure - Edit cider-jack-in command to add Clojure CLI aliases](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-command-line-edit.png)

Clojure CLI aliases should be added between the `-M` execution flag and the `:cider/nrepl` alias.

![Spacemacs Clojure - Edit cider-jack-in command, adding Clojure aliases](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-cider-jack-in-command-line-edit-custom-aliases.png)


## Deconstructing the command line

`cider-jack-in` commands include the dependencies to start a REPL process which the Emacs Cider process can connect to, using nREPL.

`-Sdeps` adds the required library dependencies to start an nREPL server (`nrepl/nrepl`) and connect to that nREPL server from Cider (`cider/cider-nrepl`).

`:aliases` defines the `:cider/nrepl` alias, defining that the `clojure` command should run `nrepl.commandline/-main` to start an nREPL server process, along with the Cider middleware to connect to that nREPL server process


## Adding aliases

Aliases can be used from the project `deps.edn` file or the user `deps.edn` file, e.g [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn)

`:extra-paths` and `:extra-deps` configuration in aliases is used by the Cider jack-in command line.

`:main-opts` entries in aliases are ignored when `:cider/nrepl` is kept as last alias in the chain.

> placing aliases after `:cider/nrepl` will prevent cider-jack-in working correctly (or at all), unless the last alias in the chain also included the same configuration as the `:cider/nrepl` alias


## Use .dir-locals.el to configure REPL startup

Cider variables can be used to customize the REPL startup via a `.dir-locals.el` file in the root of the Clojure project.

`SPC p e` creates or opens a `.dir-locals.el` file in the root of the project.  A helm prompt also allows for adding entries into the file.

Add the `:env/test` alias to `cider-clojure-cli-aliases` and the paths and libraries defined aliases will always be included when running a REPL from Spacemacs

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . ":env/test"))))
```

The **[Clojure projects section](/clojure-projects/)** contains further examples of configuring the REPL startup.

> The previously used variable `cider-clojure-cli-global-options` is deprecated and may cause issues with cider-jack-in that prevent the REPL from starting.
>
> Execution flags, `-M`,`-P`,`-T`,`-X`,`-A` are removed from the value
