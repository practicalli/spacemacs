# Extracting or Expanding


## Extract anonymous functions

If you have code that contains an anonymous function you can use ... to quickly create a named function.  This new named function is replaces by a call to this function from the original location.

```
(reverse
 (reduce (fn [x y]
           (if (even? y) (conj x y) x))
         (list) (range 10)))

```

is converted too

```clojure

```
