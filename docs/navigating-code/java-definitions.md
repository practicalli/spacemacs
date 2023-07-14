# Navigating to Java Class and Method definitions

++comma++ ++"g"++ ++"g"++ with the cursor on a Java class or method name in a Clojure source code file will jump to its definition.  This is useful if you are using Java interop in your Clojure code or using Java libraries as part of your project, e.g. [Java swing code example](https://github.com/practicalli/clojure-through-code/blob/master/src/clojure_through_code/xx_swing_example.clj){target=_blank}

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

[practicalli/example deps.edn includes example aliases for java sources](https://github.com/practicalli/clojure-deps-edn#java-sources){target=_blank}

!!! HINT "Location of Sources"
    The location of the Java src.zip file may differ on your operating system.  You can also extract the `src.zip` file and use the extracted sources.


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

![Spacemacs navigation Java definitions](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-navigation-definitions-java.png)


## Adding Local Clojure and Java sources

<!--
 This approach does not seem to work currently.  [Issue #2819](https://github.com/clojure-emacs/cider/issues/2819) has been raised.
-->

Navigate to Java source files [using local copies of the Java Source code](https://docs.cider.mx/cider/config/basic_config.html#_use_a_local_copy_of_the_java_source_code){target=_blank}.  Download and extracting the Clojure and Java sources to your computer.

=== "Ubuntu"

    Java sources are available as Debian/Ubuntu packages

    ```
    sudo apt install openjdk-17-source
    ```

=== "MacOSX"

    Java source code is part of the JDK installation and can be found at:

    ```
     /Library/Java/JavaVirtualMachines/{jdk-version}/Contents/Home/src.zip.
    ```

=== "Windows"

    Java source code is part of the JDK installation and can be found at:

    ```
    C:\Program Files\Java\{jdk-version}\src.zip
    ```

=== "CIDER"

    Download the [latest Clojure sources](https://repo1.maven.org/maven2/org/clojure/clojure/1.11.1/){target=_blank} from Maven

    Extract the Java `src.zip` file and `clojure-x-x-x-sources.jar` file

    Add `cider-jdk-src-paths` configuration to `dotspacemacs/user-config` in the `.spacemacs` file.  Change the paths if you extracted the files to a different location.

    ```elisp
      (setq cider-jdk-src-paths '("~/projects/java/clojure-1.11.1-sources"
                                  "~/projects/java/openjdk-17/src"))
    ```
