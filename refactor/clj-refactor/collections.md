# Convert between collection types

Quickly convert an existing collection (list, map, vector, set) to a different collection type without breaking the structure of that collection (i.e without loosing the closing character)

Place the cursor on the opening character of the collection `( { [ #` and use one of the following commands


| Spacemacs     | Normal    | Emacs         | Command                        | Description             |
|---------------|-----------|---------------|--------------------------------|-------------------------|
| `SPC m r c [` | `, r c [` | `C-c  C-r  [` | clojure-convert-to-vector      | convert to vector       |
| `SPC m r c {` | `, r c {` | `C-c  C-r  {` | clojure-convert-to-map         | convert to map          |
| `SPC m r c #` | `, r c #` | `C-c  C-r  #` | clojure-convert-to-set         | convert to set          |
| `SPC m r c (` | `, r c (` | `C-c  C-r  (` | clojure-convert-to-list        | convert to list         |
| `SPC m r c '` | `, r c '` | `C-c  C-r  '` | clojure-convert-to-quoted-list | convert to quoted  list |

![](https://raw.githubusercontent.com/clojure-emacs/clj-refactor.el/master/examples/clojure-convert-coll.gif)


> ####Hint::Syntax not checked during refactor
> Collections are converted regardless of whether the resulting collection is of the correct structure.  For example, converting to a map does not check for balanced key-value pairs.  Neither does converting to a set check for unique values.
>
> These commands replace the previous cycle collection command from earlier versions of clj-refactor.
