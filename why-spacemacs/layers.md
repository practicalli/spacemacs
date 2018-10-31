# Simple Layers and Configuration

Most language support and many other amazing features can be added to Emacs from many hundreds of packages created by the community. It does seem that there is a package for just about everything you want to do.

Spacemacs uses Layers that organise these packages and the configuration to make them work seamlessly together.  For example, the Clojure layer is composed of 9 different packages that you would otherwise have to know about and install and then get them to work together with a bit of configuration code.  Layers make things very simple, requiring only one word to be added to the Spacemacs configuration file.


[![Emacs - butterfly mode](https://imgs.xkcd.com/comics/real_programmers.png)](https://imgs.xkcd.com/comics/real_programmers.png)

> ####Hint::
> `SPC SPC butterfly` to activate in Spacemacs.  Use this great power very carefully.


## Simple Configuration

Spacemacs provides a well tested configuration file called `~/.spacemacs` that provides lots of sensible defaults and makes customising your experience very easy.  This file is created during the Spacemacs installation.

The `~/.spacemacs` configuration file is composed of three important sections

| Section                      | Purpose                                                                                                                                                                                                           |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **dotspacemacs/layers**      | Layers provide a simple way to add language support and tooling to Spacemacs.  A layer can contain elisp configuration and packages from Melpa/Elpa.  Individual Emacs packages can also be added (if they do not exist in any layer) |
| **dotspacemacs/init**        | configuration applied when Spacemacs first starts, eg evil or holy mode(emacs), themes, fonts, full screen, recent files, etc                                                                                     |
| **dotspacemacs/user-config** | Add your own customisation here                                                                                                                                                                                   |

> ####Info::Example .spacemacs configuration
> Review the authors [current .spacemacs configuration file](https://gist.github.com/jr0cket/2cbe91668b904c5a42a8f08a583e9242) for examples of changes and the [dotfile configuration](http://spacemacs.org/doc/DOCUMENTATION.html#dotfile-configuration) section of the Spacemacs documentation for a complete overview.


## Opening and reloading the configuration file

Spacemacs provides specific keybindings for opening and reloading the `~/.spacemacs` configuration file.

| Vim Normal  | Emacs       | Description                                  |
|-------------|-------------|----------------------------------------------|
| `SPC f e d` | `M-m f e d` | open the `~/.spacemacs` file                 |
| `SPC f e R` | `M-m f e R` | reload the configuration from `~/.spacemacs` |

> ####Hint::Restart after changing configuration
> The bigger a change you are making in the `~/.spacemacs` configuration file, the more desirable it is to restart Emacs.  For example, if you are adding a large layer or multiple layers and pulling in a number of packages.
> Unless its a small change, then restart Emacs with `SPC q r`
>

## Adding a Layer

Simply open the `~/.spacemacs` file and add the name of the layer you want in the section `dotspacemacs-configuration-layers`.  Some layers also take additional configuration in the form of variables in the layer definition.

See the Spacemacs documentation for a [list of layers](http://spacemacs.org/layers/LAYERS.html) or open the help in Spacemacs `SPC h SPC` to list all the layers, pressing `RET` on a layer name to read about it.

------------------------------------------

> #### Note:: Notes for existing Emacs users
> If you have configured Emacs before, you can consider the `.spacemacs` file as a replacement for the `init.el` file you would otherwise use to define your Emacs configuration.
>
> Installing packages via the `packages-list-packages` method is ignored by Spacemacs.  Any packages installed in this way will be ignored.
>
> If no layer exists for a package, you can [use a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer).
>
> You can add what ever elisp you like to the **dotspacemacs/user-config** section of the `~/.spacemacs` configuration file.
