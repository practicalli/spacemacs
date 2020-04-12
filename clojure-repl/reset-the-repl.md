# Restart the REPL

You can keep a REPL open for days or even weeks for the same project.

Occasionally you want to start from scratch and remove all of the evaluated code from the REPL.


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
If you modify two namespaces which depend on each other, you must remember to reload them in the correct order to avoid compilation errors.

If you remove definitions from a source file and then reload it, those definitions are still available in memory.  If other code depends on those definitions, it will continue to work but will break the next time you restart the JVM.

If the reloaded namespace contains defmulti, you must also reload all of the associated defmethod expressions.

If the reloaded namespace contains defprotocol, you must also reload any records or types implementing that protocol and replace any existing instances of those records/types with new instances.

If the reloaded namespace contains macros, you must also reload any namespaces which use those macros.

If the running program contains functions which close over values in the reloaded namespace, those closed-over values are not updated (This is common in web applications which construct the "handler stack" as a composition of functions.)
