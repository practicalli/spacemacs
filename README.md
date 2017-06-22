# Clojure development with Spacemacs

[![GitHub version](https://badge.fury.io/gh/practicalli%2Fspacemacs-gitbook.svg)](https://badge.fury.io/gh/practicalli%2Fspacemacs-gitbook)

![Clojure-cider-spacemacs-logo](images/spacemacs-logo.png)

This is an introduction to developing Clojure applications using Emacs, specifically based on the Spacemacs configuration for Emacs and CIDER.  The aim is to help you be productive with those tools as quickly as possible.

Spacemacs is a community-driven project that provides a simple way to add lots of extra functionality to Emacs, without having to manage packages yourself or spend time writing common configuration code.

[![Join the conversation on Gitter](images/gitter-chat-badge-practicalli.png)](https://gitter.im/practicalli/chat?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

This workshop will cover the following topics:

* Adding the Clojure layer 
* Running the REPL & evaluating code 
* Running tests & test reports 
* Structural editing (smartparens/paredit fun) 
* Emacs common commands 
* Emacs cool stuff (multiple cursors, kill-ring / visual undo 
* Clojure docs, auto-completion, snippets 
* Clojure refactoring with clj-refactor
* Clojurescript development, figwheel and chestnut template
* Org-mode for project documentation, literate programming & presentations 
* debugging basics (I rarely use the debugger so if anyone is willing to show how they use the debugger, please speak up).

> This is not a guide to customising Emacs for Clojure development, except were there are useful additions to be made to Spacemacs and the Clojure layer.


## Configuration

> **Fixme** work in progress, no git repository available as yet.

My [spacemacs configuration file is published as a gist](https://gist.github.com/jr0cket/065ab83a0ddf6da9848d7847b7dd7704)

Any customisations made to the standard Spacemacs install are contained in the Github repository [Spacemacs configuration](https://github.com/practicalli/spacemacs-configuration)

To get a copy of the repository, use the following git clone command which creates a new directory called clojure-webapps-example that contains the cloned code. 

`git clone https://github.com/practicalli/spacemacs-configuration.git`

---

This work is licensed under a Creative Commons Attribution 4.0 ShareAlike License (including images & stylesheets).

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Spacemacs, Practicalli</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="spacemacs.practical.li" property="cc:attributionName" rel="cc:attributionURL">John Stevenson</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/practicalli/spacemacs" rel="dct:source">Spacemacs, Practicalli on Gitub</a>.<br />Permissions beyond the scope of this license may be available at <a xmlns:cc="http://creativecommons.org/ns#" href="https://twitter.com/jr0cket" rel="cc:morePermissions">@jr0cket</a>.
