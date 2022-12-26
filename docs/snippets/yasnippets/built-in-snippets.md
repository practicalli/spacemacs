## Yasnippet Built-in Snippets

[Yasnippet official snippet collection](https://github.com/AndreaCrotti/yasnippet-snippets) contains Emacs mode specific snippets that are automatically included in Spacemacs.


## Web-mode HTML Link

In `web` major mode, typing `link` and pressing `M-/` expands to `<link rel="stylesheet" href="url" type="text/css" media="screen" />` placing the cursor on `stylesheet`.

`TAB` moves the cursor to `url` to change the name of the CSS file.

`TAB` again until the end marker is reached.

![Spacemacs - Snippets - Web html link expanded](/images/spacemacs-auto-completion-snippets-html-link-expanded.png)


## Clojure mode snippets

There are numerous snippets that provide short-cuts for the minimal amount of common code structure in Clojure.

`defn M-/` will expand to a function definition expression with the cursor in the position for the function name.  `TAB` will jump to the argument list, docstring and body of the function definition in turn.

With snippets added to the auto-completion tooltip, typing `def` show the matching snippets and function names.  Where a menu item as an `->` it denotes a snippet, e.g. `def -> def`and `defn -> defn`.

## Common Clojure snippets include

| Snippet    | Description                                             | Tab Stops                        |
|------------|---------------------------------------------------------|----------------------------------|
| defn       | `defn` function definition                              | name, docstring, args, body      |
| for        | `for` iterative macro                                   | condition, body                  |
| if         | `if` conditional expression                             | condition, body                  |
| ifl        | `if-let` - if true, bind local name                     | binding, body                    |
| let        | `let` - bind a local name to value                      | name, value, body                |
| map.lambda | `map` with anonymous function `#()`                     | fn, body                         |
| ns         | `ns` - current namespace inserted automatically         | N/A                              |
| reduce     | `reduce` - reduce expression with an anonymous function | args, body                       |
| require    | `:require` expression with library and alias            | library, alias                   |
| test       | `deftest` expression                                    | test description, value/expected |

See the [Clojure Snippets Reference](clojure-snippets-reference.md) for a complete list

!!! HINT "Write your own snippets"
    [writing your own snippets](writing-snippets.md) is fairly simple for Clojure or any other language you use with Spacemacs / Emacs


## Clojure namespace snippet

The `ns` snippet adds a namespace expression with the namespace of the current file, this requires a running REPL.

++spc++ ++"f"++ ++"f"++ to create a new file, using underscores in the file name to separate words. Any underscores in the file name are converted into dashes in the `ns` definition

Type `ns` and then ++tab++ ++slash++ to expand the snippet, which included the namespace of the current file.

If using snippets with auto-completion tool-tips, ++tab++ or arrow keys to select `ns -> ns` snippet, ++enter++ to insert snippet using the buffer file name
