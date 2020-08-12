# Debug Clojure
Most functions in Clojure are easily explored in the REPL, so debugging is not usually the first tool to reach for.

Tools for inspecting the results of functions are used more, especially as the size and complexity of the results data grows.

The more complex custom code becomes, the greater the need for debugging tools
Spacemacs clojure layer also provides an inspector and a debug.

| Tool                                 | Description                                                 |
|--------------------------------------|-------------------------------------------------------------|
| [cider inspector](inspect-values.md) | navigate through data structures, paging through large data |
| [cider debug](cider-debug.md)        | add breakpoints and step through values and expressions     |
| [sayid debug](sayid-debug.md)        | debug the whole project (must compile) and profile project  |

![Cider debugging](https://docs.cider.mx/cider/0.26/_images/cider_debugger.gif)

## References
* [docs.cider.mx - debugging](https://docs.cider.mx/cider/0.26/debugging/debugger.html)
