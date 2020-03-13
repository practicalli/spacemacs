# Start a new Clojure REPL

Spacemacs can start a REPL for the current Clojure project, calling out to the Clojure CLI tools, Leiningen or Boot.

You can run the following types of REPL's
* `cider-jack-in-clj` for Clojure on the JVM
* `cider-jack-in-cljs` for a ClojureScript REPL
* `cider-jack-in-clj&cljs` for both the above (full stack)

Open or select a Clojure buffer, this can be a `.edn`, `.clj`, `.cljc` or `.cljs` file.

| Keybindings               | Description                      |
|---------------------------|----------------------------------|
| `, '`, `, s i` or `, m s` | start a REPL, selecting the type |

Once the REPL starts you can evaluate your code in the buffer.


## Most used REPL keybindings

| Keybindings               | Command                                   |
|---------------------------|-------------------------------------------|
| `, '`, `, s i` or `, m s` | start a REPL, selecting the type          |
| `, s a`                   | toggle between repl and code              |
| `, s q r`                 | restart the REPL                          |
| `, s q q`                 | quit the REPL                             |
| `, s q n`                 | reload the current namespace in the REPL  |
| `, s q N`                 | reload all project namespaces in the REPL |


### Clojure send to REPL menu

![Spacemacs Clojure REPL send to menu](/images/spacemacs-clojure-repl-send-to-menu.png)

### Clojure send to REPL - quit sub menu

![Spacemacs Clojure REPL send to menu](/images/spacemacs-clojure-repl-send-to-menu-quit.png)

> #### Hint:: Clojure REPL tools
> `, s u` adds the REPL utility functions
> `apropos`, `dir`, `dir-fn`, `doc`, `find-doc` and `source` into the current REPL namespace.
>
> These REPL utility functions are included in the `user` namespace by default.
> See the [`clojure.repl` api documentation](https://clojure.github.io/clojure/clojure.repl-api.html) for full details
