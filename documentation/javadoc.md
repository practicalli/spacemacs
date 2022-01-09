![Java banner](https://raw.githubusercontent.com/practicalli/clojure-content/master/images/java-banner.png)

# Javadoc - Java API documentation

`, h j` will show the javadoc information for a Java method or class, opening the relevant page on the Oracle website for Java.

![Spacemacs Clojure - Java docs website](/images/spacemacs-clojure-docs-java-docs-website.png)


## Navigate Java Source code

`, g g` to run the command `clj-find-var` which shows

![Spacemacs Clojure - find Java sources](/images/spacemacs-clojure-java-find-var.png)

Selecting a specific Java package (namespace) will open the  Java source code in a buffer

![Spacemac Clojure - Java source code example](/images/spacemacs-clojure-find-var-java-source-code.png)

> #### Hint::Include Java Sources
> Use the `-M:java-11-source` alias when starting Clojure to include the sources for Java 11 on the classpath, making them available for the Cider `clj-find-var` lookup.
