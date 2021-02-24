# Pre-requisites 

* Emacs version 25.1 or greater 

* Leiningen version 2.7.1

* Git client to clone Spacemacs or zip tool to unpack download

* no `.emacs.d` directory in your home account


## Emacs

[Spacemacs](http://spacemacs.org/) is a community curated set of configurations for the [Emacs editor](https://www.gnu.org/software/emacs/), so it requires a version of Emacs to be installed.

It is highly recommended you install the latest stable version of Emacs, which as of January 2017 is version 25.1.

Emacs uses a project called [CIDER](https://cider.readthedocs.io/en/latest/) to provide an excellent development environment for Clojure and due to dependency changes in the latest version of CIDER, support for Emacs versions earlier than 25.x is no longer provided.

> CIDER is installed as part of the Clojure layer in Spacemacs, so we do not need to install CIDER ourselves.

## Leiningen

[Leiningen](http://leiningen.org/) is the build automation tool for Clojure and you should install the latest version, currently version 2.7.1.

Emacs (CIDER) commands for clojure such at `M-x cider-jack-in` call out to Leiningen to run Clojure REPL's


## Emacs / Spacemacs configuration

Emacs configuration is typically stored in a series of files and directories under a directory called `.emacs.d`.  This `.emacs.d` directory lives in the root of your user account, for example `/home/jr0cket/.emacs.d` on Linux / Unix systems.

As Spacemacs is a community curiated collection of configuration files, then these are placed in the `.emacs.d` directory.  Therefore you should remove any existing `.emacs.d` directory from your home account, or move that directory elsewhere should you wish to keep any previous configuration.


