# Refactor Clojure Code

Common refactoring, such as changing names, can be done with the [Evil tools](/editing/evil-tools/), `iedit`, `narrowing` and `helm-ag`. These have been covered previously in the [Evil tools](/editing/evil-tools/) section.

Specific examples of using evil tools for refactoring Clojure code:

* [Within a function](within-a-function.md)
* [Within a namespace](within-a-namespace.md)
* [Within a project](within-a-project.md)

[Structural editing](/structural editing/) via the `SPC k` lisp state uses `smartparens` to alter the your code whist respecting the structure, as defined by parens, `[ ] { } ( )` and even `" "`.  Smartparens works for all languages, although is most useful with lisp syntax.

Clojure specific refactor commands are in the clojure mode refactor menu, `, r` provided by the package `clj-refactor`.  These refactor commands are very rarely used as the commands already mentioned allow you to do a huge amount of refactoring quickly.

| Refactor Approach                                                | Usage                                                                            |
|------------------------------------------------------------------|----------------------------------------------------------------------------------|
| [narrowing](/evil-tools/narrowing.md)                            | refactor in function on region (usually with iedit)                              |
| [iedit](/editing/evil-tools/iedit.md)                            | refactor in current namespace                                                    |
| [helm-ag](/editing/evil-tools/replacing-text-across-projects.md) | project wide refactor (usually with iedit)                                       |
| [lisp state](/structured-editing/lisp-state.md)                  | A state for smartparents [structural editing](/structural editing/)              |
| clj-refactor                                                     | `, r` for clojure specific refactor commands (optional package in Clojure layer) |


> #### TODO::Add example video of refactoring
> Add a video with some common examples of refactoring in action.
> Here is a general Emacs and clj-refactor example in the mean time

<iframe width="560" height="315" src="https://www.youtube.com/embed/pKzIxtR0ElU?start=205" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
