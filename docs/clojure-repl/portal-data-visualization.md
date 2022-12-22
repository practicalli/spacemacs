## Starting a REPL with Portal data inspector
Portal is a web browser data inspector that can be configured as the `tap>` source for a project.  Any expression surrounded by `(tap> ,,,)` has its evaluated result sent to Portal.

<!-- TODO add image showing off Portal -->

[Portal](https://github.com/djblue/portal) navigates data in the form of edn, json and transit (with vega graphic support coming soon)

[Practicalli Clojure -data browsers section - portal](https://practical.li/clojure/clojure-cli/data-browsers/portal.html){target=_blank .md-button}

Portal is simple to add to a REPL as it only requires the Portal library to be added as a dependency.

practicalli/clojure-deps-edn includes several aliases for portal, depending on the type of Clojure project used.

| Command                          | Description                                           |
|----------------------------------|-------------------------------------------------------|
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


### Rich comment for Portal

Add a `(comment ,,,)` form in the source code file to start and control Portal

```clojure title="Rich comment"
  (require '[portal.api :as portal])  ; Require portal namespace

  (inspect/open {:portal.colors/theme :portal.colors/solarized-dark}) ; (1) Open with theme

  (inspect/clear)  ; Clear all values in the portal inspector window
  (inspect/close)  ; Close the portal window
```
1.  Solarized Light is an alternative light theme for portal
    ```clojure
    (inspect/open {:portal.colors/theme :portal.colors/solarized-light})
    ```


## Automatically start Portal

`user` is the default namespace when a Clojure REPL starts.  If there is a `user.clj` file on the classpath, the code it contains is automatically loaded once the REPL has started.

Create a `user` namespace in the file `dev/user.clj`. Require the portal library in the namespace definition, using the alias `inspect`. Call the `inspect/open` function to launch Portal in a browser tab. Call `inspect/tap` to add portal as the `tap>` source for the project (there can only be one `tap>` source)

```clojure title="dev/user.clj"
(ns user
  (:require
     [portal.api :as inspect]))

;; Start Portal
;; Open a portal inspector window using default theme
(inspect/open {:portal.colors/theme :portal.colors/solarized-light})

;; Add portal as a tap> target
(inspect/tap)
```

The `:env/dev` alias from [`practicalli/clojure-deps-edn`](https://practical.li/clojure/clojure-cli/install/community-tools.html) adds `dev` directory to the classpath, so the `user` namespace in `dev/user.clj` is loaded when starting the REPL.


```shell
clojure -M:env/dev:repl/rebel
```
