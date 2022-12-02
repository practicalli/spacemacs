# Refactor within a project

`SPC s p` (`helm-swoop`) searches the text of all project files, displaying the results in a helm popup.

`C-c C-e` opens the search results in a buffer for editing.  Changes in this buffer can be applied back to the relevant files in the project.

`#` or `*` on a function name (or any text) will select all instances, opening the transient buffer menu.

`e` starts iedit, placing a cursor on each instance to make multiple simultaneous changes.  Multiple cursors or the usual editing commands can also be used to make changes.

`C-c C-c` to commit the changes and update all the relevant files in the project. `C-c C-k` to changes and keep the project files as they were.


> #### TODO::Add video

---

> #### Hint:: Clojure refactor - rename symbol
> `, r r s` will rename all occurrences of the symbol at point using [clj-refactor rename symbol](https://github.com/clojure-emacs/clj-refactor.el/wiki/cljr-rename-symbol#or-a-locally-defined-symbol).
>
> This requires a running REPL and for all the project code to compile without error.
