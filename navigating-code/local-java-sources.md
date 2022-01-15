## Adding Local Clojure and Java sources

> ####DANGER::Not currently working ?
> This approach does not seem to work currently.  [Issue #2819](https://github.com/clojure-emacs/cider/issues/2819) has been raised.

Navigate to Java source files [using local copies of the Java Source code](https://docs.cider.mx/cider/config/basic_config.html#_use_a_local_copy_of_the_java_source_code).  Download and extracting the Clojure and Java sources to your computer.

{% tabs ubuntu="Debian/Ubuntu", macosx="MacOSX", windows="Windows" %}

<!-- Ubuntu Install -->
{% content "ubuntu" %}
Java sources are available as Debian/Ubuntu packages

```
sudo apt install openjdk-17-source
```

<!-- MacOSX Install -->
{% content "macosx" %}
Java source code is part of the JDK installation and can be found at:

```
 /Library/Java/JavaVirtualMachines/{jdk-version}/Contents/Home/src.zip.
```

<!-- Windows Install -->
{% content "windows" %}

Java source code is part of the JDK installation and can be found at:

```
C:\Program Files\Java\{jdk-version}\src.zip
```

{% endtabs %}

Download the [latest Clojure sources](https://repo1.maven.org/maven2/org/clojure/clojure/1.10.3/) from Maven

Extract the Java `src.zip` file and `clojure-x-x-x-sources.jar` file

Add `cider-jdk-src-paths` configuration to `dotspacemacs/user-config` in the `.spacemacs` file.  Change the paths if you extracted the files to a different location.

```elisp
  (setq cider-jdk-src-paths '("~/projects/java/clojure-1.10.3-sources"
                              "~/projects/java/openjdk-17/src"))
```
