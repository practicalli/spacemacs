# Refresh REPL State

A REPL can be kept open indefinately so long as the state is kept clean and free from stale definitions.   

[Clojure tools.namespace.repl library](https://cljdoc.org/d/org.clojure/tools.namespace/1.4.4/api/clojure.tools.namespace.repl) provides functions to refresh the REPL state without the need to restart the REPL.

[Component lifecycle libraries](./component-lifecycle.md), e.g. mount, integrant, system or component, define the components of an application and can start & stop them without restarting the REPL.

Restarting (stop/start) the REPL process will wipe the REPL state clean and start with an empty state.

??? INFO "Avoiding stale REPL state"
    Use [`, e u`  (`cider-undef`)](/spacemacs/evaluating-clojure/undefine/) before changing the name of a var (e.g. `def`, `defn`, `deftest`, etc.). 

    Code that changes within a var can be refreshed by [evaluating the var expression]([undefine](/evaluating-clojure/) again.


## Restart the REPL

Restart the REPL process to start again with a clean REPL state.  Use this approach afer a major refactor of code has taken place.

`, m q r` (`sesman-restart`) to shutdown the current REPL process and start a new REPL repl process with a clean state.  The editor is automatically connected to the new REPL process.  A restart is the same as `cider-quit` followed by `cider-jack-in-*`.

> `cider-restart` only restarts the Cider connection to the running REPL process and does not affect the REPL process itself.


## Refresh REPL State

Remove all stale vars (def and defn expressions no longer in the source code) from the REPL without having to restart

`, e n` calls `cider-ns-refresh` which reloads any modified and unloaded namespaces on the classpath.

`cider-ns-refresh` uses [`clojure.tools.namespace.repl`](https://github.com/clojure/tools.namespace) which will load and reload code based on the namespace dependency graph. Existing definitions that have not changed will be kept, so any state managed in this way will be kept.

`SPC u , e n` will unconditionally refresh all namespaces, refreshing all the code in the project.

`SPC u SPC u , e n` clears the state of the namespace tracker before reloading, if for example circular dependencies are preventing successful reload.

??? HINT "CIDER refresh hook for component lifecycle libraries"
    `cider-ns-refresh` can [call component lifecycle functions](/spacemacs/clojure-repl/component-lifecycle/) to stop and start services as part of the refresh process.


## Force reload namespace

If there are issues using `cider-ns-refresh` then use a unconditional reloading of the namespace.

`, e N` calls `cider-ns-reload` which reloads the namespace of the current source code buffer.  This is the same as evaluating `(require 'namespace.name :reload)` in the REPL.

`SPC u , e N` prompts for a namespace name to reload a different namespace than that of the current buffer.


### Issues with Clojure reload

When modifying two namespaces that depend on each other, the namespaces must be reload in the correct order to avoid compilation errors.

Removing definitions from a source file does not remove those stale definitions from a running REPL.  Code that uses those stale definitions will continue to work, but will break the next time you restart the REPL.

A reloaded namespace containing `defmulti` must reload all of the associated `defmethod` expressions.

A reloaded namespace containing `defprotocol` must reload any records or types implementing that protocol,  replacing any existing instances of those records/types with new instances.

All namespaces that use a macro in a reloaded namespace must be reloaded.

For functions that close over values in a reloaded namespace, those values are not updated (e.g. web applications which construct the "handler stack" as a composition of functions.)


## References
* [Hard CIDER: Hard Restart](https://metaredux.com/posts/2019/11/07/hard-cider-hard-restart.html)
* [Reloading Woes - Lambda island](https://lambdaisland.com/blog/2018-02-09-reloading-woes)
* [clojure.tools.namespace.repl](https://cljdoc.org/d/org.clojure/tools.namespace/0.3.1/api/clojure.tools.namespace.repl) - cljdoc.org
