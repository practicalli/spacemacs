# Formatting code

Consistent formatting really aids the readability of a code base.

Spacemacs Clojure layer will format the code as you type.  When pressing `RET` the cursor correctly indents.  `TAB` key will also left align the current line of code.


> #### Hint::Discussion on formatting
> Interesting [discussion on formatting code on Clojureverse forum](https://clojureverse.org/t/clj-commons-building-a-formatter-like-gofmt-for-clojure/3240).

## cljfmt

[cljfmt](https://github.com/weavejester/cljfmt) is a tool for formatting Clojure code idiomatically.

The following piece of code is hard to read as it is not cleanly formatted

```clojure
( let [x 3
    y 4]
  (+ (* x x
  )(* y y)
  ))
```

Using `cljfmt` will convert this into nicely formatted Clojure code

```clojure
(let [x 3
      y 4]
  (+ (* x x) (* y y)))
```

> #### Hint::
> It is not the goal of cljfmt to provide a canonical format.
