# Inspect Clojure

You can see the value of a value in clojure using inspection, `SPC d i`

![Spacemacs - Clojure - Inspect value - java.lang.Long](/images/spacemace-clojure-inspect-java-lang-long.png)

## Inspecting Collections

When you inspect a collection you see the last evaluated value of that collection.

Here is the result of inspecting a simple persistent map - **{:name "John" :coding "Clojure" :tool "Spacemacs"}**

![Spacemacs - Clojure - Inspect persistent map](/images/spacemacs-clojure-inspect-persistent-map.png)

And if there are collections within collections then those values are shown too

![Spacemacs - Clojure - Inspect persistent map with vector](/images/spacemacs-clojure-inspect-persistent-map-with-vector.png)


# Inspecting mutable values

This should be were lots of fun is.  Inspecting an atom or ref and having a buffer watching the changing values.

Unfortunately it seems you need to inspect the value each time using `SPC d i`.
