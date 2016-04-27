# Setup

  This workshop requires [Leiningen](http://leiningen.org/) to create, manage and run projects.  Any text editor is fine, preferably with Clojure syntax support.  You also need Java runtime environment, preferably version 1.8.

## Java 
  Check you have a Java runtime on your system path by typing the following in a terminal window:
  
```bash
java -version
```

If Java is not found, please install it from [Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html) or [OpenJDK](http://openjdk.java.net/projects/jdk8/).  Java may also be available via your operating systems package manger, for example on Ubuntu / Debian systems this would be installed via `sudo apt-get install openjdk-8-jre`


## Leiningen
  [Leiningen](http://leiningen.org/) is the most commonly used build automation tool used to manage Clojure projects.  Install by [saving the Leiningen install script](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein) and running it inside a terminal window  

* [Install script for Linux & MacOSX](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein)
* [Install script for Microsoft Windows](https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein.bat)


Save the file to somewhere on your operating system path, eg `~/bin`

```bash
chmod a+x ~/bin/lein
lein
```

 The first time you run this script it downloads a Java archive file (JAR) of the latest version of Leiningen.  When you run the script again, you have a working Leiningen build tool.


## Development tools with Clojure support 

A tool that understands Clojure will help you write code faster and more accurately.  Here are a few common development tools used for Clojure

* [LightTable](http://lighttable.com/) - has an Instarepl that evaluates your code as you type, great for Clojure beginners
* [Emacs](http://www.gnu.org/software/emacs/)  with either [Emacs Live](https://github.com/overtone/emacs-live), [Spacemacs](https://github.com/syl20bnr/spacemacs) or [CIDER](https://github.com/clojure-emacs/cider) -  highly extensible support for Clojure, auto-completion, snippets, REPL & refactoring.
* [Nightcode](https://nightcode.info/) - good for beginers, nice Clojure on Android support
* [SublimeText](http://www.sublimetext.com/) - simple editor with basic Clojure awareness, used with `lein repl` on the command line


## Clojure 

There is no specific install for Clojure.  Clojure comes as a library, a JAR file, managed by the build tool Leiningen just like any other dependency.

When you create a project with Leiningen, the configuration is created in a file called `project.clj`.  Inside this `project.clj` is a `dependencies` entry where the version of clojure is specified along with any other dependencies.  Here is an example of a `project.clj` configuration with just Clojure as a dependency

```
(defproject project-name "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.7.0"]])
```
  
> **Hint** The Clojure library is very small (~3.7Mb) and Leiningen caches it and oll other libraries locally in the same folder structure that Maven uses, eg  Clojure version 0.1.7 would be cached in ` ~/.m2/repository/org/clojure/clojure/0.1.7/`


## Heroku Postgres 

The web application will also use a database to persist state.  For this project we are using the Postgres relational database, an open source and well maintained project with all the features of a modern database you would expect.

To save on installation, we will use Heroku Posgres, a database on demand service that has a free tier for development.

To start with, [create a free account on Heroku](https://heroku.com).  The step to create a database will be covered later on in the workshop.

> **Hint** Alternatively, you can install Posgres database locally on your laptop, however assistance with this is not provided.

