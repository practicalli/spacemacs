# Managing Namespaces
Adding, updating and cleaning up of libraries in your namespace.  Open the relevant Clojure file for the namespace and use the following commands to update the `ns` definition.

| Keybinding | Description                                               |
|------------|-----------------------------------------------------------|
| `, r a r`  | Add require form                                          |
| `, r a m`  | Add a missing namespace (library specification - libspec) |
| `, r a i`  | Add import form for a JVM library                         |
| `, r c n`  | Clean (remove unused) require and import forms            |

> [managing library dependencies](managing-library-dependencies.html) covers commands that add and update library dependencies to a Leiningen project.


## `ar` Add require to namespace definition
`, r a r` to require a known library namespace to the current namespace definition.

`(:require [ :as ])` is added if the `ns` definition does not contain any require statements

`[ :as ]` is added if the `(:require )` form already exists in the `ns` definition.

Auto-completion will show namespaces the REPL is aware of.

`TAB` will jump through the various _tabstops_ to simplify adding the require statement

- 1st tabstop wraps the entire `[example :as x]` entry, letting you paste in a complete require.
- 2nd tabstop is inside the brackets `example :as x`, letting you write in a require with no alias.
- 3rd and 4th tabstop is the `example` and `x`, letting you write a require with an alias.

Once you're through the tabstops, the cursor jumps back to where you were.

The namespace is automatically cleaned up afterwards.  This behaviour can be disabled by adding `cljr-auto-clean-ns nil` to the clojure layer configuration in `.spacemacs`


## `am` Add missing Clojure library (libspec)
`, r a m`  (`cljr-add-missing-libspec`) to require a namespace for a var (function, name) under the cursor that is defined in a different namespace.  This can be a namespace from the project or a library added as a dependency.

If the var name is unique on the classpath then the `ns` definition is updated automatically. A prompt to select possible candidates is shown if more than one possibility.

If the symbol at point is of the form `edn/read-string` the required namespace will be aliased to `edn`.

![](/images/add-missing-libspec.gif)


## `ai` Add a Java Library
`, r a i` to import a known JVM library (Java, Scala, Jython, etc.) to the current namespace definition.

`(:import )` form is added if the `ns` definition does not contain any import statements.

Auto-completion will show namespaces the REPL is aware of.

The namespace is automatically cleaned up afterwards.  This behaviour can be disabled by adding `cljr-auto-clean-ns nil` to the clojure layer configuration in `.spacemacs`

![Spacemacs ](/images/add-import.gif)


## `cn` Clean ns
`, r c n` to clean the `ns` namespace definition in the current Clojure buffer

* Replace `:use` in favor of `refer` `:all`.
* Sort required libraries, imports and vectors of referred symbols
* Use prefix form e.g. `[clojure [string test]]` instead of two separate libspecs
* Raise errors if any inconsistencies are found (e.g. a libspec with more than one alias).
* Remove any duplication in the `:require` and `:import` form.
* Remove any unused libspec vectors
* Remove unused symbols from the `:refer` vector, or remove it completely.
* Remove any unused imports

> The prefix rewriting can be turned off by setting `cljr-favor-prefix-notation nil`.

![](/images/clj-refactor-clean-ns.gif)
