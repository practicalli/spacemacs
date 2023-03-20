# Install Spacemacs

Emacs version 28 available as current package

```
pkg install emacs
```


## Clone Spacemacs

Use your favourite git client or the following command in a terminal window to clone Spacemacs:

=== "Free Desktop XDG config"
    ```
    git clone https://github.com/syl20bnr/spacemacs ~/.config/emacs
    ```

=== "Classic config"
    ```
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    ```

##  Clone Practicalli Spacemacs configuration

Clone [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) configuration or first create a fork and clone that fork


=== "Free Desktop XDG config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs-config.git ~/.config/spacemacs
    ```

    Using HTTPS
    ```shell
    git clone https://github.com/practicalli/spacemacs-config ~/.config/spacemacs
    ```

    `~/.config/spacemacs/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.

    Ensure `SPACEMACSDIR` environment variable is set to the Practicalli Spacemacs configuration directory in the `~/.profile` file
    ```bash title="SPACEMACSDIR environment variable in ~/.profile"
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_DATA_HOME=$HOME/.local/share
    export XDG_STATE_HOME=$HOME/.local/state
    export XDG_CACHE_HOME=$HOME/.cache

    # Set XDG location of Emacs Spacemacs configuration
    export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"
    ```


=== "Classic config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs.d.git ~/.spacemacs.d
    ```

    Using HTTP
    ```shell
    git clone https://github.com/practicalli/spacemacs.d ~/.spacemacs.d
    ```

    `~/.spacemacs.d/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.



### Searching files

Spacemacs uses ripgrep, a highly optimised tool for finding files on the operating system.

```
pkg install ripgrep
```
