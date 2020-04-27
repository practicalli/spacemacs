# Clojure Snippets
There are numerous snippets that provide short-cuts for the minimal amount of common code structure in Clojure.

`defn M-/` will expand to a function definition expression with the cursor in the position for the function name.  `TAB` will jump to the argument list, docstring and body of the function definition in turn.

With snippets added to the auto-completion tooltip, typing `def` show the matching snippets and function names.  Where a menu item as an `->` it denotes a snippet, e.g. `def -> def`and `defn -> defn`.

## Common Clojure snippets include

| Snippet    | Description                                              | Tab Stops                              |
| ----       | ----                                                     | ----                                   |
| defn       | `defn` function definition                               | name, docstring, args, body            |
| for        | `for` iterative macro                                    | condition, body                        |
| if         | `if` conditional dfexpression                            | condition, body                        |
| ifl        | `if-let` - if true, bind local name                      | binding, body                          |
| let        | `let` - bind a local name to value                       | name, value, body                      |
| map.lambda | `map` with anonymous function `#()`                      | fn, body                               |
| ns         | `ns` - current namespace inserted automatically          | N/A                                    |
| reduce     | `reduce` - reduce expression with an anonymous function  | args, body                             |
| require    | `:require` expression with library and alias             | library, alias                         |
| test       | `deftest` expression                                     | test description, value/expected       |


> ####Hint::Write your own snippets
> Its easy to [write your own snippets](add-your-own-snippets.html) for Clojure or any other language you use with Spacemacs / Emacs

## Clojure namespace snippet
The `ns` snippet adds a namespace expression with the namespace of the current file, this requires a running REPL.

`SPC f f` to create a new file, using underscores in the file name to separate words. Any underscores in the file name are converted into dashes in the `ns` definition

Type `ns` and then `M-/` to expand the snippet, which included the namespace of the current file.

If using snippets with auto-completion tool-tips, `TAB` or arrow keys to select `ns -> ns` snippet, `RET` to insert snippet using the buffer file name
