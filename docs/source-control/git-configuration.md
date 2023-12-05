# Git Configuration

Git uses either `XDG_CONFIG_HOME/git/config` or `$HOME/.gitconfig` configuration file for user level settings.

An identity is required when sharing commits via services such as GitHub/GitLab and so that each commit you make is associated to you.

!!! HINT "Practicalli Dotfiles Git Configuration"
    [:fontawesome-brands-github: Practicalli Dotfiles](https://github.com/practicalli/dotfiles) contains an example Git user configuration, with separate identity configuration files for commercial and open source work.

    The Git configuration also provides global Git ignore patterns for Clojure and MkDocs projects.


## Add an identity to Git configuration

Define your git identity using the following commands in a terminal window

??? HINT "Use the GitHub Email Mask address"
    To minimise Email spam, use the [email address provided by GitHub as a mask to your primary email address](https://github.com/settings/emails) on the GitHub account.  The mask address is of the form `***+github-account@noreply.github.com`.

    [Visit the email settings of the GitHub account](https://github.com/settings/emails) and tick **Keep my email addresses private**.

    A new email of the form `******+github-account-name@users.noreply.github.com` is created which must be set as your user email address

    For additional security, select the option **Block command line pushes that expose my email** to prevent commits being pushed to GitHub using your public email address.

```shell
git config --global user.name "practicalli"

git config --global user.email ***+github-primary-email-address@noreply.github.com
```

The `[user]` section of the Git configuration file is updated by these commands, automatically creating the file and section if it does not exist.


## Access remote repositories

GitHub repositories can be accessed via HTTPS or SSH URL.

SSH approach is typically more secure, especially as the files holding your keys on disk are encrypted.  SSH connections can be tunnelled through HTTPS if connecting to a remote repository via a very restricted firewall.

HTTPS is more widely supported in firewalls as it goes through the HTTPS port.  A personal access token is typically required (GitHub blocks access via password), although it must be saved in a plain text file, e.g. `~/.github`.  Should a token be compromised, it does not give access to the account on the remote repository, so the token can be deleted easily.


### SSH URLs with SSH Key

When using SSH URLs for remote repository access, [generate an SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and [add it to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).

The SSH key removes the need to enter GitHub credentials each time a command is used that accesses a remote repository (push, pull, clone, etc.).

![GitHub Clone using SSH URL](https://raw.githubusercontent.com/practicalli/graphic-design/live/github/screenshot/github-clone-ssh-spacemacs.png)


#### SSH Key Passphrase

Practicalli recommends setting a passphrase when generating an SSH key.

Unix systems (Linux / MacOSX) should have the `ssh-keygen` command.

`-t` specifies the type of encryption, ed25519 recommended by GitHub

`-C` to add your GitHub email address to the SSH key

```
ssh-keygen -t ed25519 -C "github-primary-email-address@noreply.github.com"
```

??? INFO "Create key with RSA if Ed25519 not supported"
    ```
    ssh-keygen -t rsa -b 4096 -C "github-primary-email-address@noreply.github.com"
    ```


Accept the default file or enter a preferred file name

Enter a passphrase.  A 12 character or greater passphrase should provide adequate security.

Repeat the passphrase

The key has now been created, with an `id_rsa.pub` public key that should be added to you GitHub account.

![ssh-keygen generated SSH key](https://raw.githubusercontent.com/practicalli/graphic-design/live/github/screenshot/ssh-key-generated.png)


#### Saving SSH Key to Key Ring

A key-ring tool for the Operating System can be used to securely store the passphrase.

Ubuntu desktop has a key-ring tool which will display a pop-up dialog to save the passphrase to the key-ring the first time the SSH key is used. Once saved, the key is unlocked when login into the desktop.


### HTTPS URLs and personal access token

When using HTTPS URLs for remote repository access, a personal access token is required.  Visit the remote repository service and generate a personal access token with at least `repo` permission.

* [GitHub personal access token documentation](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
* [GitLab personal access token documentation](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#create-a-personal-access-token)

Whilst the token could be added to the `~/.gitconfig`, as this file is plain text it is not particularly secure (especially if committed into a dotfiles repository and shared).

```shell
git config --global oauth.token "tokens-in-plain-text-files-are-not-very-secure"
```

To provide greater security when using the token, consider using the [Git Credential Manager](https://github.com/GitCredentialManager/git-credential-manager).  It is not known if this approach will work with magit (let Practicalli know if it does).

??? "Magit Forge also uses personal access token"
    [Magit Forge also requires a personal access token](forge-configuration.md), although this can be saved in the encrypted file `~/.authinfo.gpg` for greater security.  The Magit Forge token includes permissions required to access remote repositories over HTTPS


## Diff 3 Support

Diff 3 standard included the parent of two changes in conflict, providing additional context when deciding which change should take precedence

```
git config --global merge.conflictstyle diff3
```

This command adds a `conflictstyle` entry in the `[merge]` section of the Git configuration file.

```
[merge]
    # Include common parent when merge conflicts arise
    conflictstyle = diff3
```

Magit supports the Diff3 standard, so a common parent will be shown when this feature is enabled.

![Git Diff3 standard supported by Magit in Spacemacs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-magit-diff3-merge-parent-empty.png?raw=true)
