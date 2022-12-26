## Leiningen

[Leiningen](http://leiningen.org/) is the most commonly used build automation tool used to manage Clojure projects.  Install by [saving the Leiningen install script](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein) and running it inside a terminal window.

* [Install script for Linux & MacOSX](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein)
* [Install script for Microsoft Windows](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein.bat) or use the Linux script from [GitBash](https://git-scm.com/) (recommended).

Save the `lein` file to somewhere on your operating system path, eg `~/bin`

```bash
chmod a+x ~/bin/lein
lein
```

Now run this script on the command line

```bash
lein
```

The first time you run this script it downloads a Java archive file (JAR) of the latest version of Leiningen.  When you run the script again, you have a working Leiningen build tool.

Running `lein` once installed will show you a list of available commands.


## Clojure

If you are using Leiningen then there is no specific install for Clojure.

Clojure comes as a library, a JAR file, managed by the build tool Leiningen just like any other dependency.

When you create a project with Leiningen, the configuration is created in a file called `project.clj`.  Inside this `project.clj` is a `dependencies` entry where the version of clojure is specified along with any other dependencies.  Here is an example of a `project.clj` configuration with just Clojure as a dependency

```
(defproject project-name "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.11.1"]])
```

> **Hint** The Clojure library is very small (~3.6Mb) and Leiningen caches it and all other libraries locally in the same folder structure that Maven uses, eg  Clojure version 0.1.8 would be cached in `.m2/repository/org/clojure/clojure/1.11.1`
