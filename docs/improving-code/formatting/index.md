# Formatting Code

Spacemacs automatically formats code as its written.

`, =` or `M-RET =` is the format menu in Spacemacs across all languages

`TAB` indents the current line of code (or selected region).  Not that `TAB` may also trigger auto-completion too.

Clojure code is typically formatted following the [Clojure Style Guide](https://github.com/bbatsov/clojure-style-guide), although this is only a guide.



## Cider format tools

`, = b` (`cider-format-buffer`) - format the Clojure code in the current buffer.

`, = l` (`clojure-align`) - vertically align the current line within the context of the top level form or selected area

For example, vertically align the values in a map

```clojure
(def my-map
  {:a-key 1
   :other-key 2})

(def my-map
  {:a-key     1
   :other-key 2})
```

> This can also be done automatically (as part of indentation) by turning on clojure-align-forms-automatically. This way it will happen whenever you select some code and hit TAB.


## Clojure LSP

Clojure LSP uses cljfmt which has a large number of very strict rules, although all rules can be tailored or disabled as required.
