# Restart the REPL
A REPL can be kept open for days or weeks for the same project, especially the vars in the REPL are kept clean by [un-defining a var, `, e u`, before changing its name]([undefine](/evaluating-clojure/undefine.md)  (e.g. `def`, `defn`, `deftest`, etc.).  Code that changes within a var can be refreshed by [evaluating the var expression]([undefine](/evaluating-clojure/) again.

Projects may use [Component lifecycle libraries](component-lifecycle.md) such as mount, integrant or component, to provide ways to start and stop the major components of an application without restarting the REPL.

Occasionally you want to start from scratch and remove all of the evaluated code from the REPL.  This is usually a good idea where major refactoring has taken place or before deployment to test and production environments.


## Refreshing the contents of the REPL
You can remove all the stale vars (def and defn expressions that are no longer in the source code) from the REPL without having to restart

`, e n` calls `cider-ns-refresh` which reloads any modified and unloaded namespaces on the classpath.

`cider-ns-refresh` uses [`clojure.tools.namespace.repl`](https://github.com/clojure/tools.namespace) which will load and reload code based on the namespace dependency graph. Existing definitions that have not changed will be kept, so any state managed in this way will be kept.

`SPC u , e n` will unconditionally refresh all namespaces, refreshing all the code in the project.

`SPC u SPC u , e n` clears the state of the namespace tracker before reloading, if for example circular dependencies are preventing successful reload.

> #### Hint::Hooking into component lifecycle libraries
> `cider-ns-refresh` can [call component lifecycle functions](/clojure-repl/component-lifecycle.html) to stop and start services as part of the refresh process.

## Force reload namespace approach
If there are issues using `cider-ns-refresh` then use a unconditional reloading of the namespace.

`, e N` calls `cider-ns-reload` which reloads the namespace of the current source code buffer.  This is the same as evaluating `(require 'namespace.name :reload)` in the REPL.

`SPC u , e N` prompts for a namespace name to reload a different namespace than that of the current buffer.


## Restarting the REPL
`SPC s q r` calls the `cider-restart` which is a convenience function that simply stops and starts the REPL. It is the same as doing `, s q q` (`cider-quit`) followed by `, '` (`cider-jack-in`).


## Issues with Clojure reload
When modifing two namespaces that depend on each other, the namespaces must be reload in the correct order to avoid compilation errors.

Removing definitions from a source file does not remove those stale definitions from a running REPL.  Code that uses those stale definitions will continue to work, but will break the next time you restart the REPL.

A reloaded namespace containing `defmulti` must reload all of the associated `defmethod` expressions.

A reloaded namespace containing `defprotocol` must reload any records or types implementing that protocol,  replacing any existing instances of those records/types with new instances.

All namespaces that use a macro in a reloaded namespace must be reloaded.

For functions that close over values in a reloaded namespace, those values are not updated (e.g. web applications which construct the "handler stack" as a composition of functions.)


## References
* [Reloading Woes - Lambda island](https://lambdaisland.com/blog/2018-02-09-reloading-woes)
* [clojure.tools.namespace.repl](https://cljdoc.org/d/org.clojure/tools.namespace/0.3.1/api/clojure.tools.namespace.repl) - cljdoc.org
