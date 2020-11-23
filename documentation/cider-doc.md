# Cider doc
View the documentation for function definitions and other vars, including links to browse the Clojure specification and source code.

> #### Hint::Evaluate a namespace to enable Help
> Help only works for special forms (`def`, `if`, etc.) until any namespace from a project is first evaluated.

 `, '` calls `sesman-start` which shows a menu to start or connect to a REPL process

`, e b` (`cider-eval-buffer`) to evaluate a source code buffer. This will load the `clojure.core` functions and vars as well as the relevant namespaces of the project.  Alternatively just evaluate the namespace expression, `cider-eval-ns-form`.

Alternatively, use  if all source code in that namespace compiles.

`, h h` shows the documentation for the current function or var under the cursor, or prompts for a function or var name.

![Spacemacs Clojure docs - defn example](/images/spacemacs-clojure-doc-defn.png)

The documentation popup shows
* the argument list of a function
* meta data (version added, scope, etc)
* doc-string describing the function or var
* Clojure spec - argument, return specifications
* Location and link to source code
* Links to related functions

## Viewing the source code
`RET` on the link to the source code will open the source in a separate buffer.

![Spacemacs Clojure docs source code - defn example](/images/spacemacs-clojure-doc-source.png)


## Viewing the specification
`RET` on the Browse Spec link will open the specification in a separate buffer.

![Spacemacs Clojure docs source code - defn example](/images/spacemacs-clojure-doc-clojure-spec.png)


## Clojuredocs examples
`, h d` calls `cider-clojuredocs` to display the documentation for a function along with examples using that function.  Examples are very useful when you do not understand the function documentation.

[Clojuredocs](https://clojuredocs.org/) is a website with the documentation for the Clojure Standard Library.  Each entry also contains many code examples of using each function, contributed by the Clojure community.

![Spacemacs Clojure documentation - clojuredocs example](/images/spacemacs-clojure-docs-clojuredocs.png)
