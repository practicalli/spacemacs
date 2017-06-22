# Spacemacs Overview

[Spacemacs](http://spacemacs.org/) is a community built configuration for [Emacs](https://www.gnu.org/software/emacs/), enabling an easier out of the box setup for your favorite lanaguages and Emacs modes.

A quick review of the following features will make it easier for you to understand how to get the most out of Spacemacs.


# Configuration

Spacemacs creates a `~/.spacemacs` configuration file.  Think of this as the init.el file you would otherwise create for your own configuation.

The only configuration you need to do for Spacemacs is to add layers.

You can add your own Emacs configuration in the `dotspacemacs/user-config` section of the `~./spacemacs` file.


# Spacemacs Layers

A layer can be one or more Emacs pacakges and associated configuration to make all those packages work nicely together.  Layers are typically around languages or major modes for Emacs.  For example there is a Clojure layer that adds packages like CIDER, cljs-refactor, paredit/smartparens support, autocompletion for Clojure, etc.

See the Spacemacs documentation for a [list of layers](http://spacemacs.org/layers/LAYERS.html) or open the help in Spacemacs `SPC h SPC` to list all the layers, pressing `RET` on a layer name to read about it.


## Adding a Layer

To add a layer, edit the Spacemacs configuration file, `~/.spacemacs` and in the function `dotspacemacs/layers` and section `dotspacemacs-configuration-layers` add the name of the layer you want to include.

For example, see [my full Spacemacs configuration](https://gist.github.com/jr0cket/065ab83a0ddf6da9848d7847b7dd7704) to see my layers configuration.

> Trying to use packages-list-packages to install packages directly is simply ignored by Spacemacs.  See how to [configure a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer) in the Spacemacs documentation.

# Goodbye init.el, hello dotspacemacs

![Spacemacs configure layers](/images/spacemacs-configure-layers.png)

The init.el file has long been the entry point for your Emacs configuration with many different ways to setup an Emacs configuration.  With Spacemacs you have the `.spacemacs` file and layers, giving a very structured approach that is easy to follow.

The `.spacemacs` file has three sections

* **dotspacemacs/init** - configuration applied when Spacemacs first starts, eg evil or holy mode(emacs), themes, fonts, full screen, recent files, etc
* **dotspacemacs/layers** - add features to spacemacs using layers, a layer can contain elisp and packages from Melpa/Elpa
* **dotspacemacs/config** - additional layer configuration or your own customisations 

The (emacs) keybindings for dotspacemacs are

`SPC f e d` - open the `~/.spacemacs` file 
`SPC f e R` - reload the configuration from `~/.spacemacs` 

> Some changes in the `~/.spacemacs` file still require a restart of Emacs , especially when pulling in a large number of packages in a layer.
