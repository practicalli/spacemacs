# Configuring eshell and multi-term
`SPC '` or `SPC p '` displays a popup buffer containing eshell in the current directory of the buffer or project respectively.  The position of this popup buffer is configurable.

All the commands available on your usual command line terminal are available in eshell.  To close the shell you can use the command `exit`.

Emacs can run any shell inside a buffer window so you never have to leave Emacs.


## Adding the shell layer
eshell is available by adding the **shell** layer to `dotspacemacs-configuration-layers` section of `~/.spacemacs`.

> #### Hint::Automatic install
> Calling `SPC SPC eshell` will prompt to install the shell package if its not currently added.

The shell popup is configured in the `dotspacemacs-configure-layers` section of the `~/.spacemacs` file.

```
(shell :variables
       shell-default-height 30
       shell-default-position 'bottom)
```

`shell-default-position` can be top, bottom, left or right.

`shell-default-height` defines the percentage of the Spacemacs frame to use.

## Customising eshell prompt

You can customize the eshell prompt, although there is nothing specific in Spacemacs.

Practicalli created a custom Eshell prompt.  The code can be found in the [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/blob/master/init.el#L872-L994) configuration, the [Eshell custom code in `dotspacemacs/user-config` section](https://github.com/practicalli/spacemacs.d/blob/master/init.el#L872-L994).

![Spacemacs Eshell custom prompt](/images/spacemacs-eshell-theme-practicalli.png)


# multi-term - use operating system shell
Use multi-term if you wish to use the default shell in the terminal window from your operating system.

Add the `shell-default-shell` variable and set to `'multi-term` in the shell layer in the `~/.spacemacs` file.

Here is an example with the multi-term shell set, along with popup size and location

```
     (shell :variables
            shell-default-shell 'multi-term
            shell-default-height 30
            shell-default-position 'bottom)

```

`M-m '` now opens a shell buffer as a popup with the default shell of your operating system terminal.


# Configure multi-term to use zsh
I have [zsh configured for my terminal window](http://jr0cket.co.uk/2013/09/hey-prezto-zsh-for-command-line-heaven.html) which uses [prezto](https://github.com/sorin-ionescu/prezto) to provide extra shell features.

Add the following to `dotspacemacs/user-config` in your `~/.spacemacs` file

```
(setq multi-term-program "/usr/bin/zsh")
```

`SPC f s` to save the `~/.spacemacs` file.

`SPC f e R` to reload the configuration, or `SPC q r` to restart Spacemacs.

![Spacemacs Shell - Multiterm zsh](/image/spacemacs-shell-popup-multiterm-zsh.png)
