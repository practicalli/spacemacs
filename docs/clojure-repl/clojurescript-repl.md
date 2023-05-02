# ClojureScript projects

[Practicalli ClojureScript](https://practicalli.github.io/clojurescript/) covers the development of websites and single page apps (SPA) with figwheel-main build tool and the react-style reagent library

Create a figwheel-main project and use `cider-jack-in-cljs` to start REPL driven development.

??? INFO "Rich Terminal REPL & Editor file save rebuild"
    Using an Editor jack-in tool is arguably the easiest approach, as it connects the Editor to the REPL process so code can be evaluated in the Editor.

    `clojure -M:figwheel/env:build/dev` command will run a ClojureScript REPL providing a Rebel rich terminal UI.  An nREPL server will not be running, so the editor is not able to connect to the REPL.  However, when code is saved, Figwheel automatically updates the build and pushes changes to the browser window containing the application being developed.

    It may be possible to use a custom `user` namesapce to run nREPL and Piggieback to create a server which a Clojure editor can connect too.  A custom nREPL and Piggieback middlware library might also work.  Please get in touch if you have a working configuration for this approach.


## Figwheel-main project

[:fontawesome-solid-book-open: Practicalli Clojure CLI Config](https://practical.li/clojure/clojure-cli/practicalli-config/) defines the `:project/create` alias which provides several templates to start ClojureScript projects using Figwheel-main.

- `:practicalli/landing-page` a simple web page with common content defined in a hash-map and rendered with reagent components, styled by [Bulma.io CSS](https://builma.io)
- `:practicalli/single-page-app` atom managed app-state with content rendered by reagent components

In a terminal, create a ClojureScript projects using the `practicalli/sigle-page-app` template

```shell
clojure -T:project/create :practicalli/single-page-app :name practicalli/tictactoe
```

A new project is created in the tictactoe directory containing a ClojureScript projects including Reagent libraries and using Figwheel-main REPL driven development.


## REPL jack-in

Develop the code and interact with the REPL state using source code buffers in the editor.

`SPC f f` to open a Clojure file from the project, e.g. `tictactoe/deps.edn`

`, m s` to launch sesman (session manager) start

Choose `cider-connect-cljs` to start the REPL and connect to it from the Editor automatically

![ClojureScript figwheel-main cider-jack-in-cljs](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-clojurescript-repl-command-cider-jack-in-light.png#only-light)
![ClojureScript figwheel-main cider-jack-in-cljs](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-clojurescript-repl-command-cider-jack-in-dark.png#only-dark)

Figwheel compiles the ClojureScript code and opens a browser window showing the application.

Saving changes in the code triggers figwheel to rebuild the project and inject updates into the browser window

??? HINT "Modify the Cider jack-in command"
    `SPC u , m s` will show the full command in the mini-buffer once cider-jack-in-cljs is selected.

    ![Spacemacs Clojure - Clojurescript REPL cider-jack-in mini-buffer command](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-clojurescript-repl-cider-jack-in-mini-buffer-command-light.png#only-light)
    ![Spacemacs Clojure - Clojurescript REPL cider-jack-in mini-buffer command](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-clojurescript-repl-cider-jack-in-mini-buffer-command-dark.png#only-dark)

    The command can be 'carefully' edited in the mini-buffer, e.g. to change the Clojure CLI aliases used (defined at the end of the command)

    NOTE: do not remove the `:cider/nrepl` alias otherwise CIDER will fail to work correctly (unless replaced with an alias containing the same configuration)


## Restart or Shutdown

`, m q r` to restart Figwheel (`sesman-quit`)

`, m q q` to shutdown Figwheel and close the REPL (`sesman-quit`)



## Project Configuration

The Practicalli templates contain a `.dir-locals.el` project configuration for Emacs which sets host, port, REPL typle and build to start.

```Emacs
((clojurescript-mode . ((cider-preferred-build-tool          . clojure-cli)
                        (cider-clojure-cli-aliases           . ":figwheel/env")
                        (cider-default-cljs-repl             . figwheel-main)
                        (cider-figwheel-main-default-options . "dev")
                        (cider-repl-display-help-banner      . nil))))
```


??? INFO "Manual Configuration Prompts"
    Without the `.dir-local.el` command the following extra prompts are shown

    Confirm the host name (locahost by default)

    ![ClojureScript figwheel-main cider-jack-in-cljs localhost](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/clojurescript-figwheel-main-connect-host-localhost.png)

    Confirm the port number for tictactoe project

    ![ClojureScript figwheel-main cider-jack-in-cljs localhost port](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/clojurescript-figwheel-main-connect-port-tictactoe.png)

    Confirm figwheel-main build tool as the REPL type

    ![ClojureScript figwheel-main cider-jack-in-cljs figwheel-main build tool](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/clojurescript-figwheel-main-connect-repl-type-figwheel-main.png)

    Confirm dev build configuration

    ![ClojureScript figwheel-main cider-jack-in-cljs figwheel-main build configuration dev](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/clojurescript-figwheel-main-connect-build-dev.png)

    `SPC b m` to open the message buffer which shows the output from nREPL server.

    ![ClojureScript figwheel-main cider-jack-in-cljs nrepl output in message buffer](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/clojurescript-figwheel-main-connect-nrepl-output.png)
