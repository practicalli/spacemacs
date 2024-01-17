# Inspect Clojure values

`, d v` is the Cider Inspector menu used to efficiently page through very large data sets and navigate through nested data structures.

`, d v l` shows the last evaluation in the inspector

`, d v f` evaluates the top level expression under the cursor and displays the result in the inspector

`, d v e` evaluates the previous expression before the cursor and displays the result in the inspector

!!! HINT "Following evaluation results in Cider Inspector"
    Keep the Cider Inspector buffer open to update with the result of the latest expression evaluation, from `, e` or `, d v` menus.

??? INFO "Inspector in action"
    Clojure REPL workflow video includes using the Cider Inspector, 20 minutes into the video
    
    <p style="text-align:center">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/NDrpclY54E0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </p>


## Use Inspector buffer

Once Cider Inspector buffer is open:

`n`  and `p` page through the data if the number of elements in the data set is greater than the page size (default 32), (`cider-inspector-next-page`, `cider-inspector-prev-page`)

`TAB` and `S-TAB` to navigate forward and backward through the elements that can be further inspected, (`cider-inspector-next-inspectable-object`, `cider-inspector-previous-inspectable-object`).

`RET` to inspect the current value under the cursor (`cider-inspector-operate-on-point`)

`r` to refresh the inspector view (`cider-inspector-refresh`)

`s` interactively sets the page size, updating how many elements are shown in one page of the cider inspector buffer, (`cider-inspector-set-page-size`).

`q` quits the cider inspector buffer


## Inspecting simple values

Inspecting a dynamic var shows its value along with the datafy view

![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-dynamic-var-light.png?raw=true#only-light)
![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-dynamic-var-dark.png?raw=true#only-dark)

Inspect a system property shows 

![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-system-property-light.png?raw=true#only-light)
![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-system-property-dark.png?raw=true#only-dark)


## Inspecting Collections

Inspect a collection shows the underlying type, contents of that collection and index (where applicable).  Only the elements are shown.  The characters of the overall collection itself are not show, only the underlying type of collection (vector, map, lazy sequence, etc.).

![Spacemacs - Clojure - Inspect persistent map](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-vector-light.png?raw=true#only-light)
![Spacemacs - Clojure - Inspect persistent map](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-vector-dark.png?raw=true#only-dark)

If there are collections within collections then those values can be navigated too.

`RET` on an nested element in a collection will inspect that element in the same detail (`cider-inspector-operate-on-point`).

`L` to back to parent of a nested element (`cider-inspector-pop`).


# Inspecting mutable values

Mutable containers, `atom`, `ref`, can also be inspected.  The class of the container is shown, along with the class of the value it contains along with its elements.

Inspecting an atom or ref gives the value at the current time.  The inspector does not update if the value of the atom or ref is updated. Use `r` in the inspector buffer to refresh or restart the inspector with `, d v` each time you want to check if the value has changed.


## Inspecting Var meta data

Inspecting a var from a `def` expression shows meta information, the class type and summary of the value. Meta data can include the file and position of the code, the name of the var and which namespace it is defined in.

![Spacemacs Clojure Cider Inspector - inspect last value - def](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-def-light.png?raw=true#only-light)
![Spacemacs Clojure Cider Inspector - inspect last value - def](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-def-dark.png?raw=true#only-dark)

Inspecting a `defn` also shows the argument list as part of the meta data.

![Spacemacs Clojure Cider Inspector - inspect last value - defn](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-defn-light.png?raw=true#only-light)
![Spacemacs Clojure Cider Inspector - inspect last value - defn](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-defn-dark.png?raw=true#only-dark)

Open API docs data structure example shows class, value, meta information and datafy data

![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-openapi-docs-light.png?raw=true#only-light)
![Spacemacs Clojure Cider Inspector - OpenAPI docs example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-inspector-var-openapi-docs-dark.png?raw=true#only-dark)
