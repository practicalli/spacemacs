# Navigating to Java Class and Method definitions

`, g g` with the cursor on a Java class or method name in a Clojure source code file will jump to its definition.  This is useful if you are using Java interop in your Clojure code or using Java libraries as part of your project, e.g. [Java swing code example](https://github.com/practicalli/clojure-through-code/blob/master/src/clojure_through_code/xx_swing_example.clj)

Add the Java sources locally to also enable searching with ripgrep or ag.  Or add a java-source alias when starting a REPL.

## Adding a deps.edn alias for Java sources

Using an alias is the recommended way to include Java sources for Clojure CLI projects, as those sources are a only used in the development workflow.

```clojure
  :src/java17
  {:extra-deps
   {java-sources {:local/root "/usr/lib/jvm/openjdk-17/lib/src.zip"}}}

  :src/clojure
  {:extra-deps
   {org.clojure/source {:local/root "~/projects/community/clojure.org/clojure"}}}
```

[practicalli/example deps.edn includes example aliases for java sources](https://github.com/practicalli/clojure-deps-edn#java-sources)

> #### Hint::Location of Sources
> The location of the Java src.zip file may differ on your operating system.  You can also extract the `src.zip` file and use the extracted sources.

## Include Java sources alias during jack-in

Add a `.dir-locals.el` file to the root of your Clojure project to include the java sources alias when running cider-jack-in.

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . ":src/java17")
                  (cider-preferred-build-tool . "clojure-cli"))))
```

Or include both Java and Clojure Java sources

```elisp
((clojure-mode . ((cider-clojure-cli-aliases . ":src/java17:src/clojure")
                  (cider-preferred-build-tool . "clojure-cli"))))
```

![Spacemacs navigation Java definitions](/images/spacemacs-navigation-definitions-java.png)
