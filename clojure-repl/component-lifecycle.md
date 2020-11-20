# Component Lifecycle Services
Clojure has several library to manage the lifecycle of components that make up the application, especially those components with state. Components can be started and stopped in a specific order.

Example component lifecycle libraries included

* [mount](https://github.com/tolitius/mount)
* [integrant](https://github.com/weavejester/integrant)
* [component](https://github.com/stuartsierra/component)

## Configure a deps.edn project
[Set up a project to work with component lifecycle service](https://practicalli.github.io/clojure/clojure-tools/projects/configure-repl-startup.html), for example by adding components to the `dev.clj` file under a `dev` directory.

To load the service code automatically, add `require` and `in-ns` expressions to `dev/user.clj` and use the `-M:env/dev` alias when starting the REPL from Spacemacs.

## Example project with component lifecycle
{% tabs mount="Mount", integrant="Integrant", component="Component" %}

<!-- Mount example -->
{% content "mount" %}
Using mount, its common to define a `dev.clj` file with `go`, `stop` and `restart` functions that manage the lifecycle of mount components.  A `start` function contains the list of components with optional state.

```clojure
(defn start []
  (with-logging-status)
  (mount/start #'app.conf/environment
               #'app.db/connection
               #'app.www/business-app
               #'app.service/nrepl))
```

The `go` function calls `start` and marks all components as ready.
```clojure
(defn go
  "Start all states defined by defstate"
  []
  (start)
  :ready)
```

The `stop` function stops all components, removing all non-persistent state.

```clojure
(defn stop [] (mount/stop))
```

The reset function that calls `stop`, refreshes the namespaces so that stale definitions are removed and starts all components (loading in any new code).
```clojure
(defn reset
  "Stop all states defined by defstate.
  Reload modified source files and restart all states"
  []
  (stop)
  (namespace/refresh :after 'dev/go))
```

* [Example dev.clj file for mount](https://github.com/tolitius/mount/blob/master/dev/clj/dev.clj)


## Configure cider-refresh to use component lifecycle
Create a `.dir-locals.el` file that calls the relevant mount functions when using `cider-refresh`.

`SPC p e` to open a `.dirs.locals.el` in the current project, creating the file if it does not exist.

During development call the `reset` function to stop components, clean the namespace and start all components again.

```elisp
((clojure-mode . ((cider-refresh-before-fn . "practicalli.dev/reset"))))
```

`SPC f s` to save the file.  Refresh a buffer from the project or open a new file to trigger the reading of the `.deir-locals.el` configuration by Emacs.


Alternatively, if a namespace refresh is not required, configure the `.dirs-local.el` file to call `stop` then `start`.

```elisp
((clojure-mode . ((cider-refresh-before-fn . "practicalli.dev/stop")
         (cider-refresh-after-fn . "practicalli.dev/start"))))
```

This code calls the `stop` function from the component lifecycle library at the start of the `cider-refresh` function.  At the end of `cider-refesh`, the `start` function is called to restart all the components in the defined order in the project.


<!-- Integrant example -->
{% content "integrant" %}

TODO:

<!-- Component example -->
{% content "component" %}

TODO:

{% endtabs %}
<!-- End of Clojure editors -->



> #### Hint::Prevent cider-ns-refresh calling component lifecycle functions
> `C-- , e n` or `SPC u - 1 , e n` calls `cider-ns-refresh` but prevents the refresh functions defined in `cider-ns-refresh-before-fn` and `cider-ns-refresh-after-fn` from being invoked.



## Reference
* [Easily Reloading your Clojure Project in Spacemacs](https://spin.atomicobject.com/2018/01/20/reload-clojure-spacemacs/)
* [Reloading Woes - Lambda island](https://lambdaisland.com/blog/2018-02-09-reloading-woes)
