# Debug Clojure

Most functions in Clojure are easily explored using REPL driven development, so debugging is not usually the first tool to reach for.

When unexpected results are returned from a function and its not clear why, then adding break points will step through the code of a function definition and show the intermediate values.  The more complex custom code becomes, the greater the need for debugging tools

Cider provides `cider-debug` tool to instrument a function and step through breakpoints to see what each part of that function is doing.

Sayid is a comprehensive debug and profile tool, useful when debugging needs are extensive.


| Tool                                                                                      | Description                                                     |
|-------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| [cider debug](cider-debug.md)                                                             | add breakpoints and step through values and expressions         |
| [sayid debug](sayid-debug.md)                                                             | debug the whole project (code must compile) and profile project |
| [cider inspector](/evaluating-clojure/inspect.md)                                         | navigate through data structures, paging through large data     |
| [data inspector: portal](http://practical.li/clojure/clojure-cli/data-browsers/portal.md) | visualize and navigate through data structures                  |
| [data inspector: reveal](http://practical.li/clojure/clojure-cli/data-browsers/reveal.md) | visualize and navigate through data structures                  |

<div style="position: relative;padding-bottom: 56.25%;padding-top: 25px;height: 0;">
  <iframe frameborder="0" allowfullscreen style="border: none;position: absolute;top: 0;left: 0;width: 100%;height: 100%;" src="//www.youtube.com/embed/pyIbP4BOGpQ?start=1150"></iframe></div>

<p></p>


## Inspect as a debug tool

When the wrong shape of result is return or values are not correct, a data inspector tool can be an effective way to debug a function.

Data inspector tools show the results of functions, visualising the shape and values of the data returned.  Some inspectors also capture the history of results (e.g. Portal).

Data inspectors are especially useful as the size and complexity of the results data grows.

Cider provides a data inspector to navigate nested data structures and page through large data sets.


## References
* [docs.cider.mx - debugging](https://docs.cider.mx/cider/0.26/debugging/debugger.md)
