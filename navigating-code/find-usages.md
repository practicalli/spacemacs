# Find Usages
Show all functions that reference a function or any var, matching on the namespace and symbol name.

`cider-xref-fn-refs` - find use of a function under the cursor, showing results in a new buffer

`cider-xref-fn-refs-select` - show the usages of the function at point in the mini-buffer

`cider-xref-fn-deps` and `cider-xref-fn-deps-select` to navigate to the functions used by some function

![CIDER find usages](https://metaredux.com/assets/images/cider_find_usages.gif)

> #### Todo::TODO:Pull Request for Spacemacs key bindings
> A Pull request should be created to add key binding to Spacemacs to launch these commands.


## Limitations
Find usages only works for Clojure will show only data for evaluated namespaces.

Only information that a function is used is provided, there is no information as to the precise location.

Lambda functions do not currently work with find usages.


## Alternative approaches
`, r f u` find usages with clj-refactor.el

`SPC / pattern` will show all matches to the `pattern ` in a project.  `C-c C-e` will open those results in a separate buffer and any edits will be applied to the original files.

## References
* [Discovering Runtime Function References in Clojure](https://metaredux.com/posts/2019/05/04/discovering-runtime-function-references-in-clojure.html)
* [Hard CIDER: find usages](https://metaredux.com/posts/2019/12/11/hard-cider-find-usages.html)
