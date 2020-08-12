# Sayid debug and profile tool

[Sayid](http://bpiel.github.io/sayid/), pronounced "siy EED", is an indepth debug and profile tool for Clojure projects. To debug or profile code it must be able to compile.

> #### Hint::cider-debug - a simpler approach
> [cider-debug](cider-debug.md) is simpler and quicker approach to debugging.

Sayid works by intercepting and recording the inputs and outputs of functions. It can even record function calls that occur inside of functions. The user can select which functions to trace. Functions can be selected individually or by namespace. The recorded data can be displayed, queried and profiled.

Sayid currently has three components:
- core and its supporting namespaces
- nREPL middleware
- an emacs-cider nREPL client

| Key Binding | Description                    |
|-------------|--------------------------------|
| `SPC m d b` | instrument expression at point |
| `SPC m d e` | display last stacktrace        |
| `SPC m d r` | reload namespaces              |
| `SPC m d v` | inspect expression at point    |


> #### HINT::Sayid is optional part of the Clojure layer
> [Sayid](http://bpiel.github.io/sayid/) is an optional package in the Clojure layer for Spacemacs.
>
> To enable sayid, add the following `:variable` to the `clojure` layer in `.spacemacs`
```elisp
     (clojure :variables
              clojure-enable-sayid t)
```
>
> The Sayid debug tool is automatically included when you run the REPL, `, '` or `, s i`.


{% youtube %}
https://www.youtube.com/watch?v=wkduA4py-qk?autoplay=1loop=1
{% endyoutube %}
