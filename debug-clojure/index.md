# Debug Clojure
Most functions in Clojure are easily explored using REPL driven development, so debugging is not usually the first tool to reach for.

Tools for inspecting the results of functions are used to understand the shape and values of the data returned from expressions and help identify issues. Data inspectors are especially useful as the size and complexity of the results data grows. The more complex custom code becomes, the greater the need for debugging tools

Cider provides a data inspector to navigate nested data structures and page through results.

Cider also provides a debug tool to instrument a function and step through breakpoints to see what each part of that function is doing.

| Tool                                                                                                   | Description                                                 |
|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| [cider inspector](/evaluating-clojure/inspect.md)                                                      | navigate through data structures, paging through large data |
| [data inspector: reveal](http://practical.li/clojure/clojure-tools/data-browsers/reveal.md) | visualize and navigate through data structures              |
| [data inspector: portal](http://practical.li/clojure/clojure-tools/data-browsers/portal.md) | visualize and navigate through data structures              |
| [cider debug](cider-debug.md)                                                                          | add breakpoints and step through values and expressions     |
| [sayid debug](sayid-debug.md)                                                                          | debug the whole project (must compile) and profile project  |

<div style="position: relative;padding-bottom: 56.25%;padding-top: 25px;height: 0;">
  <iframe frameborder="0" allowfullscreen style="border: none;position: absolute;top: 0;left: 0;width: 100%;height: 100%;" src="//www.youtube.com/embed/pyIbP4BOGpQ?start=1150"></iframe></div>

<p></p>




## References
* [docs.cider.mx - debugging](https://docs.cider.mx/cider/0.26/debugging/debugger.md)
