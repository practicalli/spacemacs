# Component Lifecycle

Clojure has several library to manage the lifecycle of components that make up the application, especially those components with state. Components can be started and stopped in a specific order, ensuring the system remains in a good state.

Components can be started and stopped without having to stop the Clojure REPL process.

[Donut System](https://github.com/donut-party/system){target=_blank .md-button}
[Integrant](https://github.com/weavejester/integrant){target=_blank .md-button}
[Mount](https://github.com/tolitius/mount){target=_blank .md-button}
[Component](https://github.com/stuartsierra/component){target=_blank .md-button}


## cider-refresh

`cider-refresh` uses [clojure.tools.namespace.repl](https://clojure.github.io/tools.namespace/#clojure.tools.namespace.repl) to update the state of the Clojure REPL, removing stale function definitions and loading changed code into the REPL.

CIDER provides two variables to call a fully qualified function before and after running cider-refresh, typically used to stop and start system components cleanly.

- `cider-ns-refresh-before-fn` 
- `cider-ns-refresh-after-fn` 


### Project Configuration

Create a `.dir-locals.el` file that calls the component lifecycle functions when using `cider-refresh`.

++spc++ ++"p"++ ++"e"++ to open a `.dir.locals.el` in the current project, creating the file if it does not exist.

During development call the `reset` function to stop components, clean the namespace and start all components again.

```elisp
((clojure-mode . ((cider-ns-refresh-before-fn . "system-repl/reset"))))
```

++spc++ ++"f"++ ++"s"++ to save the file.  Refresh a buffer from the project or open a new file to trigger the reading of the `.dir-locals.el` configuration by Emacs.

Alternatively, if a namespace refresh is not required, configure the `.dir-local.el` file to call `stop` then `start`.

```elisp
((clojure-mode . ((cider-ns-refresh-before-fn . "system-repl/stop")
                  (cider-ns-refresh-after-fn . "system-repl/start"))))
```

This code calls the `stop` function from the component lifecycle library at the start of the `cider-refresh` function.  At the end of `cider-refresh`, the `start` function is called to restart all the components in the defined order in the project.

!!! HINT "Prevent cider-ns-refresh calling component lifecycle functions"
    ++spc++ ++"u"++ ++minus++ ++1++ ++comma++  ++"e"++++"n"++ calls `cider-ns-refresh` but prevents the refresh functions defined in `cider-ns-refresh-before-fn` and `cider-ns-refresh-after-fn` from being invoked.


## Reloaded REPL Workflow

[:fontawesome-solid-book-open: Practicalli Reloaded REPL Workflow](https://practical.li/clojure/clojure-cli/repl-reloaded/) provides tools to further enhance and optomise the Clojure REPL workflow.

[Create custom REPL startup code](https://practical.li/clojure/clojure-cli/repl-startup/) that adds functions to manage components via the `dev/system-repl.clj` file.

The `service-repl` namespace is required by the `user` namespace in  `dev/user.clj` file, making the service-repl code load automatically when using the `-M:dev/env` alias to start the REPL.

=== "Donut System"
    Define a system which contains one or more component definitions. A component definition may include references to other components and signal handlers that specify behavior.

    ??? EXAMPLE "Example Donut system with HTTP server, logging and Routing"
        ```clojure title="practicalli/gameboard/system.clj"
        (ns practicalli.gameboard.system
          "Service component lifecycle management"
          (:require
           ;; Application dependencies
           [practicalli.gameboard.router :as router]

           ;; Component system
           [donut.system :as donut]

           ;; System dependencies
           [org.httpkit.server     :as http-server]
           [com.brunobonacci.mulog :as mulog]))

        ;; ---------------------------------------------------------
        ;; Donut Party System configuration

        (def main
          "System Component management with Donut"
          {::donut/defs
           ;; Option: move :env data to resources/config.edn and parse with aero reader
           {:env
            {:http-port 8080
             :persistence
             {:database-host (or (System/getenv "POSTGRES_HOST") "http://localhost")
              :database-port (or (System/getenv "POSTGRES_PORT") "5432")
              :database-username (or (System/getenv "POSTGRES_USERNAME") "clojure")
              :database-password (or (System/getenv "POSTGRES_PASSWORD") "clojure")
              :database-schema (or (System/getenv "POSTGRES_SCHEMA") "clojure")}}

            ;; mulog publisher for a given publisher type, i.e. console, cloud-watch
            :event-log
            {:publisher
             #::donut{:start (fn mulog-publisher-start
                               [{{:keys [publisher]} ::donut/config}]
                               (mulog/log ::log-publish-component
                                          :publisher-config publisher
                                          :local-time (java.time.LocalDateTime/now))
                               (mulog/start-publisher! publisher))

                      :stop (fn mulog-publisher-stop
                              [{::donut/keys [instance]}]
                              (mulog/log ::log-publish-component-shutdown :publisher instance :local-time (java.time.LocalDateTime/now))
                              ;; Pause so final messages have chance to be published
                              (Thread/sleep 250)
                              (instance))

                      :config {:publisher {:type :console :pretty? true}}}}

            ;; HTTP server start - returns function to stop the server
            :http
            {:server
             #::donut{:start (fn http-kit-run-server
                               [{{:keys [handler options]} ::donut/config}]
                               (mulog/log ::http-server-component
                                          :handler handler
                                          :port (options :port)
                                          :local-time (java.time.LocalDateTime/now))
                               (http-server/run-server handler options))

                      :stop  (fn http-kit-stop-server
                               [{::donut/keys [instance]}]
                               (mulog/log ::http-server-component-shutdown
                                          :http-server-instance instance
                                          :local-time (java.time.LocalDateTime/now))
                               (instance))

                      :config {:handler (donut/local-ref [:handler])
                               :options {:port  (donut/ref [:env :http-port])
                                         :join? false}}}

             ;; Function handling all requests, passing system environment
             ;; Configure environment for router application, e.g. database connection details, etc.
             :handler (router/app (donut/ref [:env :persistence]))}}})

        ;; End of Donut Party System configuration
        ;; ---------------------------------------------------------
        ```


    ??? EXAMPLE "Define `system-repl` namespace to start, stop and restart the system."
        ```clojure title="dev/system_repl.clj"
        (ns system-repl
          "Tools for REPl workflow with Donut system components"
          (:require
           [donut.system :as donut]
           [donut.system.repl :as donut-repl]
           [donut.system.repl.state :as donut-repl-state]
           [practicalli.gameboard.system :as system]))

        ;; Define the system to manage via the REPL
        (defmethod donut/named-system :donut.system/repl
          [_] system/main)

        (defn start
          "Start system with donut, optionally passing a named system"
          ([] (donut-repl/start))
          ([system-config] (donut-repl/start system-config)))

        (defn stop
          "Stop the currently running system"
          []  (donut-repl/stop))

        (defn restart
          "Restart the system with donut repl,
          Uses clojure.tools.namespace.repl to reload namespaces
          `(clojure.tools.namespace.repl/refresh :after 'donut.system.repl/start)`"
          [] (donut-repl/restart))

        (defn system
          "Return: fully qualified hash-map of system state"
          [] donut-repl-state/system)
        ```


=== "Mount"
    Define a `system-repl.clj` file with `start`, `stop` and `restart` functions that manage the lifecycle of mount components.  

    The reset function that calls `stop`, refreshes the namespaces so that stale definitions are removed and starts all components (loading in any new code).

    ??? EXAMPLE "Mount system "
        ```clojure title="dev/system-repl.clj"
        (defn start []
          (with-logging-status)
          (mount/start #'practicalli.gameboard/environment
                       #'practicalli.gameboard/persistence
                       #'practicalli.gameboard/api)
          :ready)

        (defn stop 
          "Stops all component, remove all non-persistent state."
          [] (mount/stop))

        (defn reset
          "Stop all states defined by defstate.
          Reload modified source files and restart all states"
          []
          (stop)
          (namespace/refresh :after 'dev/go))
        ```


=== "Integrant"
    [Integrant REPL for Clojure Web Service](https://practical.li/clojure-web-services/repl-driven-development/integrant-repl/){target=_blank .md-button}

    <!-- TODO: Integrant for Clojure Web Service - add to Practical.li/clojure-web-services/lifecycle/integrant/ -->

=== "Component"

    <!-- TODO: Integrant for Clojure Web Service - add to Practical.li/clojure-web-services/lifecycle/component/ -->



## Reference

* [Easily Reloading your Clojure Project in Spacemacs](https://spin.atomicobject.com/2018/01/20/reload-clojure-spacemacs/)
* [Reloading Woes - Lambda island](https://lambdaisland.com/blog/2018-02-09-reloading-woes)
