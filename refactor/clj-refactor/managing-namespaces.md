# Managing Namespaces

Adding, updating and cleaning up of libraries in your namespace.  Open the relevant Clojure file for the namespace and use the following commands:

* `ar` - Add a require section
* `am` - Add a missing library (libspec)
* `ai` - Import Java / JVM library
* `cn` - Clean up the namespace

> To add and update library dependencies to your project, see the previous section on [managing library dependencies](managing-library-dependencies.html)


## `ar` Add require to namespace declaration

If you know the library you want to add to your namespace, you can use `ar` to add the library name to the namespace form and jump back to where you were coding.

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r a r` | `M-RET r a r` | `C-c C-f a r` | `, r a r` |

Adds a `(:require )` clause to to the namespace declaration if necessary, then gives you several tabstops to help you write your require statement:

- 1st tabstop wraps the entire `[example :as x]` entry, letting you paste in a complete require.
- 2nd tabstop is inside the brackets `example :as x`, letting you write in a require with no alias.
- 3rd and 4th tabstop is the `example` and `x`, letting you write a require with an alias.

Once you're through the tabstops, the cursor jumps back to where you were. 

> If `cljr-auto-clean-ns` is true (the default), the namespace is cleaned up afterwards. 



## `am` Add missing Clojure library (libspec)

If you want to call a function that is not part of the current namespace, you can use the Emacs function `cljr-add-missing-libspec` to try resolve the symbol at point and require or import the missing symbol.

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r a m` | `M-RET r a m` | `C-c C-f a m` | `, r a m` |


If the name is unique on the classpath then the namespace is updated automatically.  If there is more than one posibility, the user is prompted to select among possible candidates.

If the symbol at point is of the form `edn/read-string` the required
namespace will be aliased to `edn`.

![](/images/add-missing-libspec.gif)



## `ai` Add a Java Library

Adds an `(:import )` clause to the namespace declaration if necessary, then lets you type out your import in a highlighted field. Tab out of the field to jump back to where you were. If `cljr-auto-clean-ns` is true (the default), the namespace is cleaned up afterwards.

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r a i` | `M-RET r a i` | `C-c C-f a i` | `, r a i` |


![Spacemacs ](/images/add-import.gif)



## `cn` Clean ns

Cleanup the namespace of the current Clojure file by removing unused libraries and referred functions.

* Replace `:use` in favor of `refer` `:all`.
* Sort required libraries, imports and vectors of referred symbols
* Use prefix form e.g. `[clojure [string test]]` instead of two separate libspecs
* Raise errors if any inconsistencies are found (e.g. a libspec with more than one alias).
* Remove any duplication in the `:require` and `:import` form.
* Remove any unused libspec vectors
* Remove unused symbols from the `:refer` vector, or remove it completely.
* Remove any unused imports

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r c n` | `M-RET r c n` | `C-c C-f c n` | `, r c n` |

> The prefix rewriting can be turned off by tweaking `cljr-favor-prefix-notation`.

![](/images/clj-refactor-clean-ns.gif)

> The `au` refactor adds a `(:use )` declaration to the namespace, however that declaration is not encouraged in Clojure as it can pollute a namespace.
