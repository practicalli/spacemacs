# Refactor Clojure Code

There are several approaches you can take for refactoring

| Approach     | Usage                                                                  |
|--------------|------------------------------------------------------------------------|
| narrowing    | refactor in function on region (usually with iedit)                    |
| iedit        | refactor in current namespace                                          |
| helm         | project wide refactor (usually with iedit)                             |
| clj-refactor | clojure specific refactor commands (optional package in Clojure layer) |
| lisp mode    | A state for smartparents [structural editing](/structural editing/)                             |


## Recommended refactoring approach

Any general refactoring, such as changing names, can be done with `iedit`, `narrowing` and `helm`.

 Clojure specific refactor commands are in the clojure mode refactor menu, `. r` provided by the package `clj-refactor`.

[structural editing](/structural editing/) via the `SPC k` lisp state uses `smartparens` to alter the your code whist respecting the structure, as defined by parens, `[ ] { } ( )` and even `" "`.


> #### TODO::Add example video of refactoring
> Add a video with some common examples of refactoring in action.
> Here is a general Emacs and clj-refactor example in the mean time

<iframe width="560" height="315" src="https://www.youtube.com/embed/pKzIxtR0ElU?start=205" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
