# Refactor within a project

`*` or `#` to open symbol highlight transient state on the current text under the cursor.  This highlights all instances of that text in the namespace.

`/` runs a search for the text in all the project files and displays the results in a helm popup.

`C-z` shows a list of actions you can perform on the results of the project search.

`F4` opens the search results in a new buffer for editing.

`SPC s e` will open iedit on any text you have selected in this new buffer and allow you to make multiple changes.  Multiple cursors or the usual editing commands can also be used to make changes.

`C-c C-c` to commit the changes you have made which will update all the relevant files in the project.  If you change your mind, `C-c C-k` will kill all your changes and keep the project files as they were.

> #### TODO::Add video

---

> #### Hint:: Clojure refactor - rename symbol
> `, r r s` will rename all occurrences of the symbol at point using [clj-refactor rename symbol](https://github.com/clojure-emacs/clj-refactor.el/wiki/cljr-rename-symbol#or-a-locally-defined-symbol).
>
> Your code needs to be working (compile without error) for this refactor to work.
