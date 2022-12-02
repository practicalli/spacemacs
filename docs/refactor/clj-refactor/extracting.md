# Extracting or Expanding

> #### TODO::work in progress, sorry


## Extract anonymous functions

`, r e `

If you have code that contains an inline function, like `(fn [])` or `#()` you can use  to quickly create a named function.  This new named function is replaces by a call to this function from the original location.

```
(reverse
 (reduce (fn [x y]
           (if (even? y) (conj x y) x))
         (list) (range 10)))
```

> #### Hint::Extracting requires working code
> The extraction command will compile your code and review the AST produced, in order to make the extraction (this seems a bit overkill).  So if your code does not compile, you cannot use this command.
