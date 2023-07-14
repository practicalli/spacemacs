# Simple Layers and Configuration

Most language support and many other amazing features can be added to Emacs from many hundreds of packages created by the community. It does seem that there is a package for just about everything you want to do.

Spacemacs uses Layers that organise these packages and the configuration to make them work seamlessly together.  For example, the Clojure layer is composed of 9 different packages that you would otherwise have to know about and install and then get them to work together with a bit of configuration code.  Layers make things very simple, requiring only one word to be added to the Spacemacs configuration file.


[![Emacs - butterfly mode](https://imgs.xkcd.com/comics/real_programmers.png)](https://imgs.xkcd.com/comics/real_programmers.png)

!!! HINT "Butterfly"
    `SPC SPC butterfly` to activate in Spacemacs.  Use this great power very carefully.


## Simple Configuration

Spacemacs provides a well tested configuration file called `~/.spacemacs` that provides lots of sensible defaults and makes customising your experience very easy.  This file is created during the Spacemacs installation.

`.spacemacs.d/init.el` file can be used as an alternative location for `.spacemacs` and is easier to manage changes via version control.

The `~/.spacemacs` configuration file is composed of three important sections

| Section                      | Purpose                                                                                                                                                                                                                               |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **dotspacemacs/layers**      | Layers provide a simple way to add language support and tooling to Spacemacs.  A layer can contain elisp configuration and packages from Melpa/Elpa.  Individual Emacs packages can also be added (if they do not exist in any layer) |
| **dotspacemacs/init**        | configuration applied when Spacemacs first starts, eg evil or holy mode(emacs), themes, fonts, full screen, recent files, etc                                                                                                         |
| **dotspacemacs/user-config** | Add your own customisation here                                                                                                                                                                                                       |

!!! INFO "Spacemacs dotfile configuration"
    [dotfile configuration](http://spacemacs.org/doc/DOCUMENTATION.html#dotfile-configuration) details installation and syncronisation options 


## Opening and reloading the configuration file

Spacemacs provides specific keybindings for opening and reloading the `~/.spacemacs` configuration file.

| Vim Normal  | Emacs       | Description                                  |
|-------------|-------------|----------------------------------------------|
| `SPC f e d` | `M-m f e d` | open the `~/.spacemacs` file                 |
| `SPC f e R` | `M-m f e R` | reload the configuration from `~/.spacemacs` |

!!! Hint "Restart after changing configuration"
    `SPC q r` after changes to the Spacemacs configuration file is recommended, especially after significant changes, e.g. adding multiple layers 

    `SPC F e R` to update the Spacemacs configuration without restarting Emacs.


## Adding a Layer

Simply open the `~/.spacemacs` file and add the name of the layer you want in the section `dotspacemacs-configuration-layers`.  Some layers also take additional configuration in the form of variables in the layer definition.

See the Spacemacs documentation for a [list of layers](http://spacemacs.org/layers/LAYERS.html) or open the help in Spacemacs `SPC h SPC` to list all the layers, pressing `RET` on a layer name to read about it.


## Available Layers

`SPC h l` (or `M-m h l` in holy mode) displays a list of all layers available in Spacemacs.  Type the layer name or scroll down (`C-j`) to a layer name and press `TAB` to preview the documentation for that layer or `RTN` to open the docs for that layer in a buffer.

![Help layers - Helm list](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-help-layers-list.png)

Create your own layers with `SPC SPC configuration-layer/create-layer`.  See the Spacemacs docs and [Configuring Spacemacs, a tutorial](http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/) for more information.


## Existing Emacs users

Consider the `.spacemacs` configuration file a replacement for the `init.el` file that would otherwise be use to define an Emacs configuration.

Installing packages via the `packages-list-packages` method is ignored by Spacemacs.  Any packages installed in this way will be ignored and deleted on Emacs startup.

If a desired package is not included in any layer, [a package can be used without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer).

**dotspacemacs/user-config** section of the `~/.spacemacs` configuration file should contain personal Emacs Lisp configuration and is the last section of the Spacemacs configuration to load.

