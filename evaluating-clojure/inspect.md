# Inspect Clojure
`, d v` opens a cider inspector buffer showing the value of the current think under the point.

`q` to quit the cider inspector buffer

## Inspecting simple values
Inpecting a number or character shows the underlying type, the value and properties of that type

![Spacemacs - Clojure - Inspect value - java.lang.Long](/images/spacemace-clojure-inspect-java-lang-long.png)

## Inspecting Collections
Inspect a collection shows the underlying type, contents of that collection and index (where applicable)

![Spacemacs - Clojure - Inspect persistent map](/images/spacemace-clojure-inspect-java-lang-persistentvector.png)

And if there are collections within collections then those values are shown too

![Spacemacs - Clojure - Inspect persistent map with vector](/images/spacemacs-clojure-inspect-persistent-map-nested.png)


# Inspecting mutable values
Stateful containers, `atom`, `ref`, can also be inspected.  The value of

![Spacemacs - Clojure - Inspect atom containing a vector](/images/spacemacs-clojure-inspect-atom-containing-persistent-vector.png)

Inspecting an atom or ref gives the value at the current time.  The inspector does not update if the value of the atom or ref is updated. `, d v` to inspect the value and see if it has changed.
