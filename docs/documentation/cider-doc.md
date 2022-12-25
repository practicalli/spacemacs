# Cider doc

View the documentation for function definitions and other vars, including links to browse the Clojure specification and source code.

!!! HINT "Evaluate a namespace to enable Help"
    Help only works for special forms (`def`, `if`, etc.) until any namespace from a project is first evaluated.

++comma++ ++single-quote++ (`sesman-start`) to start or connect to a REPL process

++comma++ ++"e"++ ++"f"++ with the cursor on the namespace definition in the source code buffer. This loads the `clojure.core` functions and vars and the required namespaces for the current namespace.

Or ++comma++ ++"e"++ ++"b"++ to evaluate a source code buffer if all source code in that namespace is syntactically correct.

++comma++ ++"h"++ ++"d"++ shows the documentation for the current function or var under the cursor, or prompts for a function or var name.

![Spacemacs Clojure docs - defn example](/images/spacemacs-clojure-doc-defn.png)

The documentation popup shows
* the argument list of a function
* meta data (version added, scope, etc)
* doc-string describing the function or var
* Clojure spec - argument, return specifications
* Location and link to source code
* Links to related functions

## Viewing the source code

++enter++ on the link to the source code will open the source in a separate buffer.

![Spacemacs Clojure docs source code - defn example](/images/spacemacs-clojure-doc-source.png)


## Viewing the specification

++enter++ on the Browse Spec link will open the specification in a separate buffer.

![Spacemacs Clojure docs source code - defn example](/images/spacemacs-clojure-doc-clojure-spec.png)


## Clojuredocs examples

[Clojuredocs](https://clojuredocs.org/){target=_blank} is a website with the documentation for the Clojure Standard Library.  Each entry also contains many code examples of using each function, contributed by the Clojure community.

![Spacemacs Clojure documentation - clojuredocs example](/images/spacemacs-clojure-docs-clojuredocs.png)
