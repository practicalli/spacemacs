# SSH URLs with remote repositories

GitHub repositories can be accessed via HTTPS or SSH URL

When using SSH URLs for remote repository access, [generate an SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and [add it to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).

The SSH key removes the need to enter GitHub credentials each time a command is used that accesses a remote repository (push, pull, clone, etc.).

![GitHub Clone using SSH URL](https://raw.githubusercontent.com/practicalli/graphic-design/live/github/screenshot/github-clone-ssh-spacemacs.png)


## SSH Key Passphrase

Practicalli recommends setting a passphrase when generating an SSH key.

Unix systems (Linux / MacOSX) should have the `ssh-keygen` command.

`-t` specifies the type of encryption, RSA recommended

`-C` to add your GitHub email address to the SSH key

```
ssh-keygen -t rsa -C "250870+practicalli-john@users.noreply.github.com"
```

Accept the default file or enter a preferred file name

Enter a passphrase.  A 12 character or greater passphrase should provide adequate security.

Repeat the passphrase

The key has now been created, with an `id_rsa.pub` public key that should be added to you GitHub account.

![ssh-keygen generated SSH key](https://raw.githubusercontent.com/practicalli/graphic-design/live/github/screenshot/ssh-key-generated.png)


## Saving SSH Key to Key Ring

A key-ring tool for the Operating System can be used to securely store the passphrase.

Ubuntu desktop has a key-ring tool which will display a pop-up dialog to save the passphrase to the key-ring the first time the SSH key is used. Once saved, the key is unlocked when login into the desktop.


## References
