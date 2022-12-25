# Javadoc - Java API documentation

++comma++ ++"h"++ ++"j"++ shows javadoc information for a Java method or class, opening the relevant page on the Oracle website for Java.

![Spacemacs Clojure - Java docs website](/images/spacemacs-clojure-docs-java-docs-website.png)


## Include Java Sources

Include the Java JDK sources when starting the REPL, to be able to navigate to the source definitions of Java methods.

Download the Java JDK sources or install via the operating system package manager, e.g. `sudo apt install openjdk-17-source`

Use an alias that adds the sources as an `:extra-deps` via a `:local/root`

`:src/java17` alias includes the sources for Java 17 on the classpath, making them available for the Cider `clj-find-var` lookup.

The alias assumes the sources are located at `/usr/lib/jvm/openjdk-17/lib/src.zip`

`clojure -M:src/java17:repl/rebel` starts a rich terminal UI REPL including the Java sources on the class path.


## Navigate Java Source code

++comma++ ++"g"++ ++"g"++ to run the command `clj-find-var` which shows

> Clojure LSP hijacks the `, g g` key binding, so use `SPC SPC clj-find-var` instead.

![Spacemacs Clojure - find Java sources](/images/spacemacs-clojure-java-find-var.png)

Selecting a specific Java package (namespace) will open the  Java source code in a buffer

![Spacemac Clojure - Java source code example](/images/spacemacs-clojure-find-var-java-source-code.png)


## Clojure LSP Java Sources

`:source-aliases` key in the Clojure LSP configuration can be used to add Java JDK sources to the Clojure LSP class path.

An alias in the project `deps.edn` can be used to include the Java JDK sources

```clojure
{:source-paths ["src" "test" "develop"]
 :source-aliases #{":src/java17"}}
```

> Clojure LSP currently doesn't use the user level `deps.edn` file, so the alias must be in the project `deps.edn` file.
