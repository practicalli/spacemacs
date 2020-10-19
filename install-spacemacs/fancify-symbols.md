# Clojure Fancy Symbols

You can represent anonymous functions, partial functions and sets with Greek symbols by setting the clojure layer variable `clojure-enable-fancify-symbols` to `t`

```
dotspacemacs-configuration-layers
   '(
     (clojure :variables
              clojure-enable-fancify-symbols nil))
```

> ####Hint::Fancy symbols can cause confusion
> Although fancy symbols may seem fun, it can be an inconvenience especially when demonstrating or explaining code to others.
