# Before You Start with Spacemacs and Clojure development

## [Install Emacs](install-emacs.html)
Spacemacs is a communiy driven configuration for Emacs, so you need to install Emacs before you can use Spacemacs.

> ####Info::Minimum Emacs Version - 26.3
> This guide used the `develop` version of Spacemacs which recommends Emacs 26.3 or greater

## [Install Java](install-java.html)
Clojure is a hosted language, so requires a Java Virtual Machine (JVM), provided by installing the Java JRE or Java SDK.  Practicalli recommends [OpenJDK 11 (LTS) from AdoptOpenJDK](https://adoptopenjdk.net/)


## [Install Clojure](install-clojure.html)
This guide is changing to use [the Clojure CLI tools and deps.edn projects](https://clojure.org/guides/getting_started).  The guide will also use [clj-new](https://github.com/seancorfield/clj-new) to create Clojure projects.

Previously this guide used [Leiningen](https://leiningen.org) as the project automation tool for Clojure.  Leiningen is a very common tool that will help you create and run projects, as well as create build assets (jars) for deployment.  This guide should also work for [boot build tools](http://boot-clj.com/), although contains no specific details.
