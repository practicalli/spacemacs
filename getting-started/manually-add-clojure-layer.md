# Manually adding the clojure layer

To add the clojure layer yourself we simply edit the `~/.spacemacs` configuration file.  Spacemacs helps us do this with the keybinding:

`SPC f e d`  or `M-m f e d` if in Emacs mode

> The Spacemacs menu system is nemonic, so the letters stand for: File, Edit and Dotfile


To add a layer, find the function `dotspacemacs/layers` and section `dotspacemacs-configuration-layers` add the name of the layer you want to include.

For example, see [my full Spacemacs configuration](https://gist.github.com/jr0cket/065ab83a0ddf6da9848d7847b7dd7704) to see my layers configuration.

> Trying to use packages-list-packages to install packages directly is simply ignored by Spacemacs.  See how to [configure a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer) in the Spacemacs documentation.


For a basic Clojure environment you only need to add the **clojure** layer.

For a full development environment for Clojure, I suggest adding the **auto-completion**, **clojure**, **git**, **html**, **javascript**, **markdown**, **org-mode**, **syntax-checking** and **version control** layers to the `dotspacemacs/layers` function in `~/.spacemacs`

After saving the changes to `~/.spacemacs` the configuration was reloaded with `M-m f e R`.  As I installed a lot of packages, I also restarted Emacs once everything had finished.

```lisp
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     clojure
     emacs-lisp
     git
     html
     javascript
     markdown
     org
     syntax-checking
     version-control
     )
```


## Reload Configuration or Restart Emacs

You can either reload the `~/.spacemacs` configuration using `SPC f e R` or quit Emacs `C-x C-c` and restart Emacs again.

> Hint: If adding a new layer, I recommend restarting Emacs to ensure all the new packages are installed and configured.


## Available Layers

Using Helm is an easy way to see what layers are already available in Spacemacs, using the keyboard combo `M-m f e h`.  This gives you a list of all layers and if you hit return on any of the layer names you are taken to the docs for that layer.

![Helm layers](/images/spacemacs-helm-layers-list.png)

You can also create your own layers with `M-m configuration-layer/create-layer`.  See http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/ for more info as well as the Spacemacs docs.


