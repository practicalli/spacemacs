# Convert between collection types

Convert a collection type to another collection type.

> FIXME: keybindings not currently working in Spacemacs, so use the commands instead via `M-x`

| Spacemacs | Emacs         | Description               | Command                        |
|-----------|---------------|---------------------------|--------------------------------|
|           | `C-c  C-r  [` | convert  to  vector       | clojure-convert-to-vector      |
|           | `C-c  C-r  {` | convert  to  map          | clojure-convert-to-map         |
|           | `C-c  C-r  #` | convert  to  set          | clojure-convert-to-set         |
|           | `C-c  C-r  (` | convert  to  list         | clojure-convert-to-list        |
|           | `C-c  C-r  '` | convert  to  quoted  list | clojure-convert-to-quoted-list |

![](https://raw.githubusercontent.com/clojure-emacs/clj-refactor.el/master/examples/clojure-convert-coll.gif)

> Collections are converted regardless of whether the resulting collection is of the correct structure.  For example, converting to a map does not check for balanced key-value pairs.  Neither does converting to a set check for unique values.

> These commands replace the previous cycle collection command from earlier versions of clj-refactor.
