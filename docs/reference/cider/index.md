# Cider reference

The following section complements the excellent [CIDER documentation](https://docs.cider.mx/) which are highly recommended.


## CIDER configuration variables

Cider behaviour can easily be modified by changing [configuration variables](configuration-variables.md).


## Clojure Fancy Symbols

Set the clojure layer variable `clojure-enable-fancify-symbols` to `t` and anonymous functions, partial functions and sets are represented with Greek-style symbols

```emacs tile="Spacemacs Configuration - dotspacemacs-configuration-layers"
     (clojure :variables
              clojure-enable-fancify-symbols t))
```

!!! WARNING "Fancy symbols can cause confusion"
    Fancy symbols can be an engaging way to write clojure, although they may be an inconvenience especially when demonstrating or pairing on code to other people
