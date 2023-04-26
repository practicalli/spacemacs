# Emacs Project configuration

`.dir-locals.el` files provide project level configuration where the default aliases, build tool and other CIDER actions can be defined.

There are many [CIDER configuration variables](/spacemacs/reference/cider/configuration-variables.md) that can be added to `.dir-locals.el`

`SPC p e` to create or edit a `.dir-locals.el` file in the current project.

??? HINT "Force loading the .dir-locals.el configuration"
    The definitions in a `.dir-locals.el` are only ready when opening a file from the current project, so a file must be opened or reloaded, ++spc++ ++"b"++ ++r++ (`revert-buffer`).  Switching to another buffer that has not been reverted (or re-opened) may not pick up the changes to the `.dir-locals.el` file.


## Example configurations
An example of setting the Clojure CLI tool as the default Clojure tool (rather than Leiningen or Boot). Also configuring several `deps.edn` aliases to be used when starting the REPL via Clojure CLI.

```elisp
((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                  (cider-clojure-cli-aliases . ":dev/env:env/test"))))
```

An example of a ClojureScript project using figwheel-main, Clojure CLI and hiding the display banner in the REPL browser

```elisp
((clojure-mode . ((cider-preferred-build-tool          . clojure-cli)
                  (cider-clojure-cli-aliases           . ":fig:dev")
                  (cider-default-cljs-repl             . figwheel-main)
                  (cider-figwheel-main-default-options . "dev")
                  (cider-repl-display-help-banner      . nil))))
```

## Only Clojure CLI tools alias

The `cider-jack-in` command injects dependencies via the `--deps` command line argument and includes the `--middleware` option for nrepl.  This auto-injected configuration can affect project or user level aliases used with jack-in.

Use the following `.dir-locals.el` configuration to just use the configuration defined in the named alias

```elisp
((clojure-mode . ((cider-preferred-build-tool . clojure-cli)
                  (cider-clojure-cli-aliases . ":alias/name")
                  (cider-jack-in-dependencies . nil)
                  (cider-jack-in-nrepl-middlewares . nil)
                  (cider-jack-in-lein-plugins . nil)
                  (cider-clojure-cli-parameters . ""))))
```

> `cider-clojure-cli-aliases` replaces `cider-clojure-cli-global-options` variable


## Shared and local configurations

Assuming a team agrees to keep a shared `.dir-locals.el` configuration in a project repository, each developer can [add their own configuration in a `.dir-locals-2.el` file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html).

The `.dir-locals-2.el` will be loaded in addition to `.dir-locals.el`.

!!! HINT "Keep tooling config in a separate repository"
    Tooling configuration is generally not project specific, so if sharing that configuration in a team simply create a repository for tooling.
    Or add tooling configuration to the project documentation.


## Common configurations

[CIDER documentation - basic configuration](https://docs.cider.mx/cider/) describes many of the configuration variables available.

Practicalli also create [a list of variables](/spacemacs/reference/cider/configuration-variables.md) extracted from the [clojure-emacs/cider](/spacemacs/reference/cider/configuration-variables.md) project.

`.dir-locals.el` is also useful for setting Projectile configuration, e.g. the project-type.  This is especially useful for [monorepo or nested projects](monorepo-nested-projects.md).

??? HINT "Set as Global options"
    Variables can also be added using `(setq )` to the `dotspacemacs/user-config` section of `.spacemacs` to set a default variable for all projects.  The `.dir-locals.el` file will over-ride the global settings.
    `(setq (cider-preferred-build-tool 'clojure-cli))`


## Understanding the syntax

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
((clojure-mode . ((cider-clojure-cli-aliases     . "-M:env/dev:env/test")
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
