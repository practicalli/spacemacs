# Emacs Project configuration

`.dir-locals.el` file can be used to configure how Emacs interacts with a project for a specific mode, e.g. `clojure-mode`.

Configure which Clojure CLI aliases to include during Cider Jack-in and set values for CIDER variables and other tool used with a Clojure project, e.g. Figwheel-main, Shadow-cljs.

!!! INFO "Reference: CIDER configuration variables"
    [CIDER configuration variables](/spacemacs/reference/cider/configuration-variables.md) list show the extent in which CIDER can be added configured within Emacs Init script or via `.dir-locals.el`

    [CIDER documentation - basic configuration](https://docs.cider.mx/cider/) describes many of the configuration variables available.


## Create Configuration

++spc++ ++"p"++ ++"e"++ to create or edit a `.dir-locals.el` file in the current project or open a `.dir-locals.el` file, e.g. via ++spc++ ++"f"++ ++"f"++

Create a list containing a list of mode-specific configurations 

```elisp
((clojure-mode . ((emacs-variable . value))))
```

[:fontawesome-solid-book-open: Syntax Explained](#syntax-explained){.md-button} 

Each mode-specific configuration is a list of lists, usually setting a variable used in Emacs or one of its packages.

!!! EXAMPLE "Clojure Mode - Use Clojure CLI"
    Configure CIDER to use the Clojure CLI tool to run the REPL process during Jack-in.
    ```elisp
    ((clojure-mode . ((cider-preferred-build-tool . clojure-cli))))
    ```

Save the `.dir-locals.el` file and open a Clojure file to make the configuration available to the buffer displaying the file.

??? HINT "Force loading the .dir-locals.el configuration"
    The definitions in a `.dir-locals.el` are only ready when opening a file from the current project, so a file must be opened,  ++spc++ ++"f"++ ++"f"++, or reloaded, ++spc++ ++"b"++ ++r++ (`revert-buffer`).  Switching to another buffer that has not been reverted (or re-opened) may not pick up the changes to the `.dir-locals.el` file.


## Clojure CLI Config

Example of setting the Clojure CLI tool as the default Clojure tool (rather than Leiningen). 

Configure Clojure CLI aliases from project or user `deps.edn` file to be included when starting the REPL via Cider Jack-in.

!!! EXAMPLE "Clojure mode - default tool with dev & test aliases"
    ```elisp
    ((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                      (cider-clojure-cli-aliases . ":dev/env:env/test"))))
    ```

!!! INFO "Clojure CLI Aliases by Practicalli"
    [Practicalli Clojure CLI Config](https://practical.li/clojure/clojure-cli/practicalli-config/) contains a wide range of aliases to use with Clojure CLI.

??? WARNING "DEPRECATED: cider-clojure-cli-global-options"
    `cider-clojure-cli-aliases` replaced `cider-clojure-cli-global-options` variable


!!! EXAMPLE "Clojure mode - Practicalli Reloaded REPL aliases"
    ```elisp
    ((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                      (cider-clojure-cli-aliases . ":test/env:dev/reloaded"))))
    ```

!!! EXAMPLE "Clojure mode - Figwheel-main configuration"
    A ClojureScript project using figwheel-main, Clojure CLI and hiding the display banner in the REPL browser
    ```elisp
    ((clojure-mode . ((cider-preferred-build-tool          . clojure-cli)
                      (cider-clojure-cli-aliases           . ":fig:dev")
                      (cider-default-cljs-repl             . figwheel-main)
                      (cider-figwheel-main-default-options . "dev")
                      (cider-repl-display-help-banner      . nil))))
    ```

??? INFO "Disable CIDER Jack-in dependencies"

    The `cider-jack-in` command injects dependencies via the `--deps` command line argument and includes the `--middleware` option for nrepl.  

    Cider Jack-in auto-injected configuration should work with a large majority of configurations, however, the CIDER configuration can be disabled if it affects desired project or user level aliases used with jack-in.

    Use the following `.dir-locals.el` configuration to only use the configuration defined in the `cider-clojure-cli-aliases` 

    !!! EXAMPLE "Disable Cider jack-in auto-injected configuration"
        ```elisp
        ((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                          (cider-clojure-cli-aliases . ":alias/name")
                          (cider-jack-in-dependencies . nil)
                          (cider-jack-in-nrepl-middlewares . nil)
                          (cider-jack-in-lein-plugins . nil)
                          (cider-clojure-cli-parameters . ""))))
        ```
    
    NOTE: The aliases included via `cider-clojure-cli-aliases` must include the dependencies and middleware configuration reqiured to connect Cider to the REPL process, i.e. nrepl and cider-nrepl

    !!! EXAMPLE "Clojure CLI Alias to start nREPL server & Cider middleware"
        ```elisp
          ;; Headless REPL with nREPL server for Clojure Editor support
          :repl/headless
          {:extra-deps {nrepl/nrepl       {:mvn/version "1.0.0"}
                        cider/cider-nrepl {:mvn/version "0.37.0"}}
           :main-opts  ["--main" "nrepl.cmdline"
                        "--middleware" "[cider.nrepl/cider-middleware]"]}
        ```

    > [Practicalli Clojure CLI Config](https://practical.li/clojure/clojure-cli/practicalli-config/) contains a wide range of aliases to use with Clojure CLI.


## Shared and local config

Assuming a team agrees to keep a shared `.dir-locals.el` configuration in a project repository, each developer can [add their own configuration in a `.dir-locals-2.el` file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html).

The `.dir-locals-2.el` will be loaded in addition to `.dir-locals.el`.

!!! HINT "Keep tooling config in a separate repository"
    Tooling configuration is generally not project specific, so if sharing that configuration in a team simply create a repository for tooling.
    Or add tooling configuration to the project documentation.


## Projectile 

`.dir-locals.el` is also useful for setting Projectile configuration, e.g. the project-type.  This is especially useful for [monorepo or nested projects](monorepo-nested-projects.md).

??? HINT "Set as Global options"
    Variables can also be added using `(setq )` to the `dotspacemacs/user-config` section of `.spacemacs` to set a default variable for all projects.  The `.dir-locals.el` file will over-ride the global settings.
    `(setq (cider-preferred-build-tool 'clojure-cli))`


## Syntax Explained

Elisp uses a two-element tuples called cons cells, create using the cons function, or with a dotted-pair notation.  This is loosely equivalent to key-value pairs in a Clojure hash-map.

cons cell example

```elisp
(cons "config-variable-name" "custom-value")
```

dotted-pair example

```elisp
'("config-variable-name" . "custom-value")
```

Multiple key-value pairs are defined as a collection of these cons cells in a list.

```elisp
(("config-variable-name" . "custom-value")
 ("config-variable-name2" . "custom-value2"))
```

`.dir-locals.el` is a list of dotted-pairs for each major mode.  The value for the major mode is another list of dotted pairs which may contain one or more dotted-pairs.

```elisp
((clojure-mode . ((config-var1 . "custom-value1")
                  (config-var2 . "custom-value2")))
 (org-mode . ((config-var3 . "custom-value3"))))
```

The configuration variables are set when a file is open in a specific Emacs major mode.

??? HINT "Avoid using `nil` for major mode"
    Use the major mode name rather than `nil` to ensure the variable is only applied to the specific mode.  `nil` applies the variables in all buffers regardless of their major mode, potentially leading to conflicts.


## Custom code

`eval` variable will evaluate custom code specified when a variable is used. For example, if using a new type of ClojureScript REPL that CIDER does not currently know, then custom elisp code can be added to make CIDER do the required actions.

```elisp
((cider-mode . ((eval . (cider-register-cljs-repl-type 'new-cljs-repl "(custom-elisp-function-for-new-cljs-repl)"))
                (cider-default-cljs-repl . new-cljs-repl))))
```


## Further examples

The [chui ClojureScript test runner](https://github.com/lambdaisland/chui/blob/master/.dir-locals.el){target=_blank} project [uses a .dir-locals.el](https://github.com/lambdaisland/chui/blob/master/.dir-locals.el){target=_blank} file with example custom code.  One custom expression ensures nrepl middleware is injected into the environment so CIDER can connect.  The other custom expression sets the indent size.

```elisp
((clojure-mode . ((cider-clojure-cli-aliases     . ":env/dev:env/test")
                  (cider-custom-cljs-repl-init-form     . "(user/cljs-repl)")
                  (cider-default-cljs-repl              . custom)
                  (cider-preferred-build-tool           . clojure-cli)
                  (cider-redirect-server-output-to-repl . t)
                  (cider-repl-display-help-banner       . nil)
                  (clojure-toplevel-inside-comment-form . t)
                  (eval . (progn
                            (make-variable-buffer-local 'cider-jack-in-nrepl-middlewares)
                            (add-to-list 'cider-jack-in-nrepl-middlewares "shadow.cljs.devtools.server.nrepl/middleware")))
                  (eval . (define-clojure-indent
                            (assoc 0)
                            (ex-info 0))))))
```

## Reference

* [CIDER list of configuration variables](/reference/cider/configuration-variables.md){target=_blank}
* [Hard CIDER: Project specific configuration](https://metaredux.com/posts/2019/10/05/hard-cider-project-specific-configuration.html){target=_blank}
* [Emacs Wiki: per-directory local variables](https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html){target=_blank}
* [Project level Emacs config with .dir-locals.el](https://lambdaisland.com/blog/2019-12-21-advent-of-parens-21-project-config-dir-locals){target=_blank} - lambdaisland

Also review directory variables in the Emacs the info pages

```elisp
(info "(emacs) Directory Variables").
```

