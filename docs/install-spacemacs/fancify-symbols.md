# Clojure Fancy Symbols

Set the clojure layer variable `clojure-enable-fancify-symbols` to `t` and anonymous functions, partial functions and sets are represented with Greek-style symbols

<!-- TODO: Add picture of fancify-symbols -->

```emacs tile="Spacemacs Configuration"
dotspacemacs-configuration-layers
   '(
     (clojure :variables
              clojure-enable-fancify-symbols nil))
```

!!! HINT "Fancy symbols can cause confusion"
    Fancy symbols can be an engaging way to write clojure, although they may be an inconvenience especially when demonstrating or pairing on code to other people
