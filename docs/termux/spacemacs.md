# Install Spacemacs

Emacs version 28 availabe as current package

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
    git clone git@github.com:practicalli/spacemacs.d.git ~/.config/spacemacs
    ```

    Using HTTPS
    ```shell
    git clone https://github.com/practicalli/spacemacs.d ~/.config/spacemacs
    ```

    `~/.config/spacemacs/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.


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
