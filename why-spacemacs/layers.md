# Spacemacs Layers & Configuration

Spacemacs has a feature rich configuration file that makes customising your experience very easy.  The layer system make adding features and language support trivial.

# Configuration

Spacemacs creates a `~/.spacemacs` configuration file.  Think of this as the init.el file you would otherwise create for your own configuation.

You can add your own Emacs configuration in the `dotspacemacs/user-config` section of the `~/.spacemacs` file.


# Spacemacs Layers

A layer can be one or more Emacs pacakges and associated configuration to make all those packages work nicely together.  Layers are typically around languages or major modes for Emacs.

For example there is a Clojure layer that adds packages like CIDER, cljs-refactor, paredit/smartparens support, autocompletion for Clojure, etc.

See the Spacemacs documentation for a [list of layers](http://spacemacs.org/layers/LAYERS.html) or open the help in Spacemacs `SPC h SPC` to list all the layers, pressing `RET` on a layer name to read about it.


## Adding a Layer

To add a layer, edit the Spacemacs configuration file, `~/.spacemacs` and in the function `dotspacemacs/layers` and section `dotspacemacs-configuration-layers` add the name of the layer you want to include.

For example, see [my full Spacemacs configuration](https://gist.github.com/jr0cket/) to see my layers configuration.

> #### Note;: Emacs package manager is not used directly
> Trying to use `packages-list-packages` to install packages directly is ignored by Spacemacs.
>
> If no layer exists for a package, you can still [use a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer)
