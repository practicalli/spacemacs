# Navigating to Java Class and Method definitions

`, g g` with the cursor on a Java class or method name in a Clojure source code file will jump to its definition.  This is useful if you are using Java interop in your Clojure code or using Java libraries as part of your project, e.g. [Java swing code example](https://github.com/practicalli/clojure-through-code/blob/master/src/clojure_through_code/xx_swing_example.clj)

A copy of the Java src.zip file should be available on your computer. Install via your Operating System package manager, e.g. `openjdk-11-source` on Ubuntu/Debian.


## Adding a deps.edn alias for Java sources
Using an alias is the recommended way to include Java sources for Clojure CLI projects, as those sources are a development time artefact.

```clojure
  :java-11-source
  {:extra-deps
   {java-sources {:local/root "/usr/lib/jvm/openjdk-11/lib/src.zip"}}}
```

[practicalli/example deps.edn includes example aliases for java sources](https://github.com/practicalli/deps-edn-examples/blob/master/deps.edn#L81-L93)

> #### Hint::
> The location of the Java src.zip file may differ on your operating system.

## Include Java sources alias during jack-in

Add a `.dir-locals.el` file to the root of your Clojure project to include the java sources alias when running cider-jack-in.

```elisp
((nil . ((cider-clojure-cli-global-options . "-A:java-11-source")
         (cider-preferred-build-tool . "clojure-cli"))))
```

![Spacemacs navigation Java definitions](/images/spacemacs-navigation-definitions-java.png)
