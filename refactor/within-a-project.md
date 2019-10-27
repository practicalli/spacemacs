# Refactor within a project


`SPC /` runs a search for the text in all the project files and displays the results in a helm popup.

`C-c C-e` to open the search results in a buffer for editing.  Changes in this file can be saved back to any relevant files in the project.

`SPC s e` will open iedit on any text you have selected in this new buffer and allow you to make multiple changes.  Multiple cursors or the usual editing commands can also be used to make changes.

`C-c C-c` to commit the changes you have made which will update all the relevant files in the project.  If you change your mind, `C-c C-k` will kill all your changes and keep the project files as they were.


> #### Hint::
> Instead of `C-c C-e` top open the search results in an editable buffer, you can select `F4` from the list of actions.
>
> `C-z` shows a list of actions you can perform on the results of the project search.
> `F4` opens the search results in a new buffer for editing.
>
> `F3` opens the search results in a new buffer but does not allow editing so cannot be used for changes.


---

> #### TODO::Add video

---

> #### Hint:: Clojure refactor - rename symbol
> `, r r s` will rename all occurrences of the symbol at point using [clj-refactor rename symbol](https://github.com/clojure-emacs/clj-refactor.el/wiki/cljr-rename-symbol#or-a-locally-defined-symbol).
>
> Your code needs to be working (compile without error) for this refactor to work.
