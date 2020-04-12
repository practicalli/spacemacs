# Restart the REPL
You can keep a REPL open for days or even weeks for the same project, especially if you keep your REPL clean by un-defining vars, `, e u`, before changing their name - `def`, `defn`, `deftest`, etc.).

Code can be reloaded into the REPL and stale definitions dropped before loading in new versions of code.  This enables the application state to be maintained.

Projects may use reloading techniques for components, minimising the need to restart the REPL.  [Component lifecycle](component-lifecycle.md) libraries (mount, integrant, component, etc.) provide ways to start and stop the major components of an application without restarting the REPL.

Occasionally you want to start from scratch and remove all of the evaluated code from the REPL.  This is usually a good idea where major refactoring has taken place.


## Resetting the contents of the REPL
You can remove all the Vars (def and defn expressions) from the REPL without having to restart

`, e n` refresh uses `clojure.tools.namespace.repl`, a smarter way to reload code

`, e N` reload the current namespace, same as `(require ... :reload)`, the traditional way to reload Clojure code without restarting the JVM
Send a (require ’ns :reload) to the REPL.

`SPC u , e N` prompts for a namespace name to reload.

`, ` will reset all If you want to rest all the names in the REPL then use the command:

> ####HINT::Undefining functions and symbols
> `, e u` will [undefine](/evaluating-clojure/undefine.md) a specific function or symbol name, removing it from the REPL.


Reload all modified files on the classpath. If invoked with a prefix argument, reload all files on the classpath. If invoked with a double prefix argument, clear the state of the namespace tracker before reloading.


## Restarting the REPL
`SPC s q r` calls the `cider-restart` which is a convenience function that simply stops and starts the REPL.

Its essentially the same as doing `, s q q` (`cider-quit`) followed by `, '` (`cider-jack-in`).


## Issues with Clojure reload
When modifing two namespaces that depend on each other, the namespaces must be reload in the correct order to avoid compilation errors.

Removing definitions from a source file does not remove those stale definitions from a running REPL.  Code that uses those stale definitions will continue to work, but will break the next time you restart the REPL.

A reloaded namespace containing `defmulti` must reload all of the associated `defmethod` expressions.

A reloaded namespace containing `defprotocol` must reload any records or types implementing that protocol,  replacing any existing instances of those records/types with new instances.

All namespaces that use a macro in a reloaded namespace must be reloaded.

For functions that close over values in a reloaded namespace, those values are not updated (e.g. web applications which construct the "handler stack" as a composition of functions.)
