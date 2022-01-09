# ClojureScript projects

[Practicalli ClojureScript](https://practicalli.github.io/clojurescript/) covers the development of websites and single page apps (SPA) with figwheel-main build tool and the react-style reagent library

[practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdn}}) defines the `:middleware/cider-cljs` alias which provides the nREPL connection support specifically for a ClojureScript REPL.


## Figwheel-main projects
Create [ClojureScript projects using `figwheel-main` template](https://practicalli.github.io/clojurescript/figwheel-main-projects/).  Rename the `:fig` alias to `figwheel` to clarify the name.

Run the project with nREPL and CIDER libraries

```shell
clojure -M:figwheel:middleware/cider-cljs
```

clojurescript-figwheel-main-external-repl-middleware-cider-cljs.png

Choose `cider-connect-cljs` when using `sesman-start`

![ClojureScript figwheel-main connect-cljs](/images/clojurescript-figwheel-main-connect-command-cljs.png)

Confirm
![ClojureScript figwheel-main connect-cljs localhost](/images/clojurescript-figwheel-main-connect-host-localhost.png)

Confirm localhost post for tictactoe project

![ClojureScript figwheel-main connect-cljs localhost port](/images/clojurescript-figwheel-main-connect-port-tictactoe.png)

Confirm figwheel-main build tool

![ClojureScript figwheel-main connect-cljs figwheel-main build tool](/images/clojurescript-figwheel-main-connect-repl-type-figwheel-main.png)

Confirm dev build configuration

![ClojureScript figwheel-main connect-cljs figwheel-main build configuration dev](/images/clojurescript-figwheel-main-connect-build-dev.png)

`SPC b m` to open the message buffer which shows the output from nREPL server.

![ClojureScript figwheel-main connect-cljs nrepl output in message buffer](/images/clojurescript-figwheel-main-connect-nrepl-output.png)
