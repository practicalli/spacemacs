# Inspect Clojure values
`, d v` is the Cider Inspector menu used to efficiently page through large data sets and easily navigate through nested data structures.

The Cider Inspector opens in a new buffer that shows the underlying type of the value and all of its details. of the current symbol under the cursor.  This provides a very readable way to understand the value and browse through larger data sets.

> #### Hint::Following the results in Cider Inspector
> The Cider Inspector will show the results of any evaluation, from `, e` or `, d v` menus, whilst the buffer is visible.

`, d v f` to evaluate a top level expression and show the results in the Cider Inspector.

`n`  and `p` page through the data if the number of elements in the data set is greater than the page size (default 32), (`cider-inspector-next-page`, `cider-inspector-prev-page`)

`TAB` and `S-TAB` to navigate forward and backward through the elements that can be further inspected, (`cider-inspector-next-inspectable-object`, `cider-inspector-previous-inspectable-object`).

`RET` to inspect the current value under the cursor (`cider-inspector-operate-on-point`)

`r` to refresh the inspector view (`cider-inspector-refresh`)

`s` interactively sets the page size, updating how many elements are shown in one page of the cider inspector buffer, (`cider-inspector-set-page-size`).

`q` quits the cider inspector buffer


## Inspecting simple values
Inspecting a number or character shows the underlying type, the value and properties of that type

![Spacemacs - Clojure - Inspect value - java.lang.Long](/images/spacemace-clojure-inspect-java-lang-long.png)


## Inspecting Collections
Inspect a collection shows the underlying type, contents of that collection and index (where applicable).  Only the elements are shown.  The characters of the overall collection itself are not show, only the underlying type of collection (vector, map, lazy sequence, etc.).

![Spacemacs - Clojure - Inspect persistent map](/images/spacemace-clojure-inspect-java-lang-persistentvector.png)

If there are collections within collections then those values can be navigated too.

`RET` on an nested element in a collection will inspect that element in the same detail (`cider-inspector-operate-on-point`).

![Spacemacs - Clojure - Inspect persistent map with vector](/images/spacemacs-clojure-inspect-persistent-map-nested.png)

`L` to back to parent of a nested element (`cider-inspector-pop`).


# Inspecting mutable values
Mutable containers, `atom`, `ref`, can also be inspected.  The class of the container is shown, along with the class of the value it contains along with its elements.

![Spacemacs - Clojure - Inspect atom containing a vector](/images/spacemacs-clojure-inspect-atom-containing-persistent-vector.png)

Inspecting an atom or ref gives the value at the current time.  The inspector does not update if the value of the atom or ref is updated. Use `r` in the inspector buffer to refresh or restart the inspector with `, d v` each time you want to check if the value has changed.


## Inspecting Var meta data
`cider-inspect-last-result` shows the result of the the last expression evaluated.  When this is a var from a `def` expression then meta information is shown as well as the class type and summary of the value.

Meta data includes the file and position of the code, the name of the var and which namespace it is defined in.

![Spacemacs Clojure Cider Inspector - inspect last value - def](/images/spacemacs-clojure-cider-inspect-last-result.png)

Inspecting a `defn` also shows the argument list as part of the meta data.

![Spacemacs Clojure Cider Inspector - inspect last value - defn](/images/spacemacs-clojure-cider-inspector-inspect-last-value-defn.png)
