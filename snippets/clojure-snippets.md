# Clojure Snippets

Using snippets saves you time typing common coding structures and helps you avoid silly typos too.  Simply typing in a snippet name and pressing `TAB` or using `SPC SPC yas-expand` gives you the full text & code structure from the snippet template.

For example, if you are defining a new function in Clojure then type `defn` and press `TAB` to expand to the full definition structure, including all parens.  Then use `TAB` to move through the structure to complete the name, doc-string, arguments and behaviour of the function.

Lets look at the built-in snippets that come with the Clojure layer in [Spacemacs](https://spacemacs.org) (and should be the default in Emacs YASnippet package).

> ####Hint::Write your own snippets
> Its easy to [write your own snippets](add-your-own-snippets.html) for Clojure or any other language you use with [Spacemacs](https://spacemacs.org) / Emacs


# Where do Snippets fit in

There are several ways to speed up typing your Clojure code, Leiningen Templates, autocompletion, clj-refactor and YASnippets.

Snippets are a great way to create much of the common code structures you typically write as you are developing your code.  The snippets I use the most are `defn`, `let`, `ifl` and `for`.

Some of the snippets are made redundant by other Clojure layer features in Spacemacs.  For example, when I create a new file then the namespace is automatically added, so I rarely use the `ns` snippet.  I also use **clj-refactor** which takes care of adding require statements for me, so the `require` snippet is rarely used.



# Default snippets for Clojure

The snippets that are available in [Spacemacs](https://spacemacs.org) can be found in the [yasnippet github repository](https://github.com/AndreaCrotti/yasnippet-snippets) or in the ` ~/.emacs.d/elpa/yasnippet-20160501.1841/snippets/clojure-mode` directory on your laptop (when yasnippet package is updated then name of that directory will change).

All the current snippets for Clojure mode are in the following table, indicating which tab stops they have.

| Snippet    | Description                                                                                                                    | Tab Stops                              |
| ----       | ----                                                                                                                           | ----                                   |
| bench      | benchmark an expression, using the `time` function                                                                             | body                                   |
| bp         | deprecated: break point in swank                                                                                              |                                        |
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


> #### Hint:: Writing org-mode tables in markdown
> The above table was created in Emacs markdown mode by enabling the minor mode: `orgtbl-mode`.  Start the table with a | character followed by a word and use `TAB` to create and align the table as you go through.  If you already have content, use the function `orgtbl-create-or-convert-from-region`.  To enable `orgtbl-mode` by default when in markdown major mode, edit your `~/.spacemacs` file, in the `dotspacemacs/user` section add the line `(add-hook 'markdown-mode-hook 'turn-on-orgtbl)`.

Hope you have fun speeding up the writing of your Clojure code (and any other common text) in [Spacemacs](https://spacemacs.org) / [Emacs](https://www.gnu.org/software/emacs/).
