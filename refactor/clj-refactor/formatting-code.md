# Formatting Code

Spacemacs automatically formats code as you are writing it, following the conventions in the [Clojure Style Guide](https://github.com/bbatsov/clojure-style-guide).  Therefore its rare that these formatting tools are needed to be used manually.

Indentation of your code can be manually applied by pressing `TAB`

Formatting code commands are part of Clojure Mode and found under `M-RET f`

![Spacemacs Clojure clj-refactor formatting menu](/images/spacemacs-clojure-clj-refactor-formatting.png) 


## `cider-format-buffer` 

Formats the Clojure code in the current buffer.

> FIXME: what are the formatting rules ?

| Major Mode  | Major mode shortcut | Spacemacs   | Spacemacs shortcut |
|-------------|---------------------|-------------|--------------------|
| `M-RET f b` | `M-RET =`           | `SPC m f b` | `SPC m =`          |



## `clojure-align` - Vertical Alignment

Vertically align the contents of the sexp around point.

| Major mode | Evil  | Spacemacs | Emacs   |
|------------|-------|-----------|---------|
| M-RET f l  | , f l | SPC m f l | C-c SPC |


If region is active, align it.  Otherwise, align everything in the current "top-level" sexp.

When called from lisp code align everything between BEG and END.

For example, you can vertically align the values in a map

```clojure
(def my-map
  {:a-key 1
   :other-key 2})
   
(def my-map
  {:a-key     1
   :other-key 2})
```

> This can also be done automatically (as part of indentation) by turning on clojure-align-forms-automatically. This way it will happen whenever you select some code and hit TAB.
