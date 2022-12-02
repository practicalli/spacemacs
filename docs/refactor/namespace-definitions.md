# Refactor `ns` namespace definitions
Refactor `ns` forms using `clojure-mode`, meaning these refactor commands work even when the REPL is not running.

> #### Hint::Pull request to be merged
> Defined in [pull request 13755](https://github.com/syl20bnr/spacemacs/pull/13755) so will only be available once this PR is merged.

| Keybinding    | Command                           | Description                                                    |
|---------------|-----------------------------------|----------------------------------------------------------------|
| `SPC m r a n` | `clojure-insert-ns-form`          | Add current namespace (from file name) to top of buffer        |
| `SPC m r a N` | `clojure-insert-ns-form-at-point` | Add current namespace (from file name) at point                |
| `SPC m r s n` | `clojure-sort-ns`                 | Sort namespaces inside an `ns` form (e.g. required namespaces) |

clj-refactor contains [commands to add require forms to the `ns` form](clj-refactor/managing-namespaces.md).


## Adding a namespace
`, r a n` will add a namespace definition to the top of the buffer, useful when creating a new Clojure/Script file.  The namespace is taken from the file name, using kebab case for separate names.

`, r a N` is useful if a comment block is used at the start of source code files or if you want to control the placement of the namespace definition.


> #### Hint::Updating a namespace
> [`clojure-update-ns` has an outstanding bug](https://github.com/clojure-emacs/clojure-mode/issues/480), so its not possible to update the name of an existing namespace.
>
> One option is to use `, r N` to add a new namespace at point and cut/paste the name over the original namespace name.

## Sorting namespaces within an `ns` form
`, r s n` alphabetically sorts the required namespace names within an `ns` form.

## Organizing by purpose
When there are more than a few required namespaces, it can be valuable to group namespaces by their purpose rather than alphabetically.

![Spacemacs Clojure - ns namespace required grouped by purpose](/images/spacemacs-clojure-ns-form-requires-grouped-by-purpose.png)
