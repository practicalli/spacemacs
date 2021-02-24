#  Clojure snippets reference
Spacemacs included the [yasnippet official snippets repository](https://github.com/AndreaCrotti/yasnippet-snippets) and [clojure-snippets package](https://github.com/mpenet/clojure-snippets), providing an extensive collection of snippets for Clojure.

* [Datomic snippets package](https://github.com/magnars/datomic-snippets) contains specific snippets for [Cognitect Datomic database](https://www.datomic.com/).

> #### Hint::deftest snippet is called test

| Snippet    | Description                                                                                                                    | Tab Stops                              |
| ----       | ----                                                                                                                           | ----                                   |
| bench      | benchmark an expression, using the `time` function                                                                             | body                                   |
| bp         | deprecated: was break point in swank                                                                                           |                                        |
| def        | `def` expression                                                                                                               | N/A                                    |
| defm       | `defmacro` expression, with name, doc-string, arguments & body tabstops                                                        | name, docstring, args, body            |
| defn       | `defn` expression, with name, doc-string, arguments & body tabstops                                                            | name, docstring, args, body            |
| defr       | `defrecord`                                                                                                                    | docstring, object, args, body          |
| deft       | `deftype`                                                                                                                      | docstring, object, args, body          |
| doseq      | `doseq`                                                                                                                        | name, body                             |
| fn         | `fn` - anonymous function                                                                                                      | name, body                             |
| for        | `for`                                                                                                                          | condition, body                        |
| if         | `if`                                                                                                                           | condition, body                        |
| ifl        | `if-let` - if true, bind a local name                                                                                          | binding, body                          |
| import     | `import` java library                                                                                                          | library name                           |
| is         | `is` - clojure test assertion                                                                                                  | value, expected                        |
| let        | `let` - bind a local name to a value                                                                                           | name, value, body                      |
| map        | `map`                                                                                                                          | fn, col, col                           |
| map.lambda | `map` with anonymous function `#()`                                                                                            | fn, body                               |
| mdoc       | metadata docstring                                                                                                             | docstring                              |
| ns         | `ns` - expression with the current namespace inserted automatically                                                            | N/A                                    |
| opts       | [destructuring](http://clojure.org/guides/destructuring) a map with `:keys`, `:or` for default values, `:as` for entire vector | :key binding, or defaults, :as binding |
| pr         | `prn` - print function                                                                                                         | string/value                           |
| print      | `println` - print function                                                                                                     | string/value                           |
| reduce     | `reduce` - reduce expression with an anonymous function                                                                        | args, body                             |
| require    | `:require` expression with library and alias                                                                                   | library, alias                         |
| test       | `deftest` expression                                                                                                           | test description, value/expected       |
| try        | `try` & `catch` expression                                                                                                     | try expression, exception name, body   |
| use        | depreciated: use require instead                                                                                               |                                        |
| when       | `when`                                                                                                                         | when expression, body                  |
| whenl      | `when-let` - local binding on when condition                                                                                   | binding, body                          |
