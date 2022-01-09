## Starting a REPL with Portal data inspector
Portal is a web browser data inspector that can be configures as the `tap>` source for a project.  Any expression surrounded by `(tap> ,,,)` has its evaluated result sent to Portal.

<!-- TODO add image showing off Portal -->

[Portal](https://github.com/djblue/portal) navigates data in the form of edn, json and transit (with vega graphic support coming soon)

[Practicalli Clojure -data browsers section - portal](https://practicalli.github.io/clojure/clojure-tools/data-browsers/portal.html)

Portal is simple to add to a REPL as it only requires the Portal library to be added as a dependency.

practicalli/clojure-deps-edn includes several aliases for portal, depending on the type of Clojure project used.

| Command                          | Description                                           |
|----------------------------------+-------------------------------------------------------|
| `clojure -M:inspect/portal-cli`  | Clojure REPL with Portal dependency                   |
| `clojure -M:inspect/portal-web`  | ClojureScript web browser REPL with Portal dependency |
| `clojure -M:inspect/portal-node` | ClojureScript node.js REPL with Portal dependency     |


### Using Portal
`(require '[portal.api :as portal])` once the REPL starts.  For `inspect/portal-web` use `(require '[portal.web :as portal])` instead

`(portal/open)` to open the web based inspector window in a browser.

`(portal/tap) `to add portal as a tap target (add-tap)

`(tap> {:accounts [{:name "jen" :email "jen@jen.com"} {:name "sara" :email "sara@sara.com"}]})` to send data to the portal inspector window (or any other data you wish to send)

`(portal/clear)` to clear all values from the portal inspector window.

`(portal/close)` to close the inspector window.


### Rich comment block for Portal

```clojure
  ;; Portal helpers
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; Require the portal namespace
  (require '[portal.api :as portal])

  ;; Open Portal window with solarized-dark theme
  (inspect/open {:portal.colors/theme :portal.colors/solarized-dark})

  ;; Open Portal window with solarized-light theme
  (inspect/open {:portal.colors/theme :portal.colors/solarized-light})

  ;; Clear all values in the portal inspector window
  (inspect/clear)

  ;; Close the portal window
  (inspect/close)
```


## Automatically start Portal
`user` is the default namespace when a Clojure REPL starts.  If there is a `user.clj` file on the classpath, the code it contains is automatically loaded once the REPL has started.

Create a `user` namespace in the file `dev/user.clj`. Require the portal library in the namespace definition, using the alias `inspect`. Call the `inspect/open` function to launch Portal in a browser tab. Call `inspect/tap` to add portal as the `tap>` source for the project (there can only be one `tap>` source)

```clojure
(ns user
  (:require
     [portal.api :as inspect]))

;; Start Portal
;; Open a portal inspector window using default theme
(inspect/open {:portal.colors/theme :portal.colors/solarized-light})

;; Add portal as a tap> target
(inspect/tap)
```

Include the `dev` directory when starting the REPL and the `dev/user.clj` code will be loaded.  The `:env/dev` alias from [`practicalli/clojure-deps-edn`]({{book.P9IClojureDepsEdnInstall}}) adds `dev` directory to the classpath.

```shell
clojure -M:env/dev:repl/rebel
```
