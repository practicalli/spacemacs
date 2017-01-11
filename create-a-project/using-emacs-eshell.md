# Using emacs eshell or multi-term

Run a command line terminal in a buffer using the command `SPC SPC eshell` or `M-x eshell`.

All the commands available on your usual command line terminal are available in eshell.  To close the shell you can use the command `exit`.


## Adding the eshell layer

eshell is available by adding the **shell** layer to `dotspacemacs-configuration-layers` section of `~/.spacemacs`.

> Calling the eshell command will prompt to install the shell package if its not currently added.


## Using a popup buffer for the shell

Spacemacs includes a pop-up window for the terminal using the command:

| Spacemacs | Emacs     |
|-----------|-----------|
| **SPC '** | **M-m '** |


The shell popup is configured in the `dotspacemacs-configure-layers` section of the `~/.spacemacs` file.

Include the `shell-default-position` in the shell variables for the shell layer.  The height of this popup is defined by the `shell-default-height` shell variable, which defines the percentage of the Spacemacs frame it uses.

```
(shell :variables
       shell-default-height 30
       shell-default-position 'bottom)
```


# Configure shell to use multi-term

To configure Spacemacs to use multi-term instead of eshell, add the `shell-default-shell` variables to the shell layer in the `~/.spacemacs` file.

Here is an example with the multi-term shell set, along with popup size and location

```
     (shell :variables
            shell-default-shell 'multi-term
            shell-default-height 30
            shell-default-position 'bottom)

```

`M-m '` now opens a shell buffer as a popup at the bottom of Spacemacs, with a hight of 30 percent of the Spacemacs frame.


# Configure multi-term to use zsh

I have [zsh configured for my terminal window](http://jr0cket.co.uk/2013/09/hey-prezto-zsh-for-command-line-heaven.html) which uses [prezto](https://github.com/sorin-ionescu/prezto) as its configuration.  This gives me a lot of features I would otherwise miss in the Emacs shell.

In the `~/.spacemacs` file, add the following line to the function `dotspacemacs/user-config`

```
(setq multi-term-program "/usr/bin/zsh")
```

Save `~/.spacemacs` file and reload the configuration, either with `SPC f e R` or by restarting Spacemacs.

![Spacemacs Shell - Multiterm zsh](/image/spacemacs-shell-popup-multiterm-zsh.png) 
