# Refactor namespace

Refactor `ns` forms using `clojure-mode`, meaning these refactor commands work even when the REPL is not running.

| Keybinding                        | Command                           | Description                                                    |
|-----------------------------------|-----------------------------------|----------------------------------------------------------------|
| ++comma++ ++"r"++ ++"a"++ ++"n"++ | `clojure-insert-ns-form`          | Add current namespace (from file name) to top of buffer        |
| ++comma++ ++"r"++ ++"a"++ ++n++   | `clojure-insert-ns-form-at-point` | Add current namespace (from file name) at point                |
| ++comma++ ++"r"++ ++"s"++ ++"n"++ | `clojure-sort-ns`                 | Sort namespaces inside an `ns` form (e.g. required namespaces) |



## Organizing by purpose

When there are more than a few required namespaces, it can be valuable to group namespaces by their purpose rather than alphabetically.

![Spacemacs Clojure - ns namespace required grouped by purpose](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-ns-form-requires-grouped-by-purpose.png)


## Refactor within a namespace

The symbol highlight transient state and iedit tools can be used to make concurrent changes to multiple instances of the same piece of text, eg. a function name, a local let binding name, a def name, etc.

++slash++ to search for matched to particular text pattern


### Changes a symbol or name

++"*"++ or ++"#"++ to open symbol highlight transient state on the current text under the cursor.  This highlights all instances of that text in the namespace.

++"e"++ starts iedit state, turning the cursor red.

Make the changes to the highlighted text and all instances of that text will change.  You can use Normal and Insert mode editing commands within iedit.

++esc++ or ++"f"++ ++"d"++ to leave iedit mode (from Evil normal mode, so if you are in Insert mode you will need to do this twice).


### Changes any text using search

 `/` to open the buffer search and type in the text pattern you are looking to find.

 `RET` to confirm you have finished entering the text pattern (hopefully you found what you are looking for).

`SPC s e` starts iedit state, turning the cursor red.

Make the changes to the highlighted text and all instances of that text will change.  You can use Normal and Insert mode editing commands within iedit.

`ESC` or `fd` to leave iedit mode (from Evil normal mode, so if you are in Insert mode you will need to do this twice).


!!! HINT "Narrow to function or text region"
   ++spc++ ++"n"++ ++"f"++ to narrowing to a function before selecting / searching to be more selective in what text is show and therefore highlighted and changed.  E.g. if you just want to [change a specific function](functions.md).
