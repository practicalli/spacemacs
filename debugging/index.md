# Debugging

[Sayid](http://bpiel.github.io/sayid/), pronounced "siy EED", is an omniscient debugger and profiler for Clojure.

Sayid works by intercepting and recording the inputs and outputs of functions. It can even record function calls that occur inside of functions. The user can select which functions to trace. Functions can be selected individually or by namespace. The recorded data can be displayed, queried and profiled.

Sayid currently has three components:
- core and its supporting namespaces
- nREPL middleware
- an emacs-cider nREPL client

| Key Binding | Description                    |
|-------------|--------------------------------|
| `SPC m d b` | instrument expression at point |
| `SPC m d e` | display last stacktrace        |
| `SPC m d r` | reload namespaces             |
| `SPC m d v` | inspect expression at point    |


> #### HINT::Sayid is part of the Clojure layer
> [Sayid](http://bpiel.github.io/sayid/) is part of the Clojure layer for Spacemacs.
>
> The Sayid debugger library is injected into the REPL when it is run.


{% youtube %}
https://www.youtube.com/watch?v=wkduA4py-qk?autoplay=1loop=1
{% endyoutube %}



# References

http://endlessparentheses.com/conditional-breakpoints-in-the-cider-debugger.html
