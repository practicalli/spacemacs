# Git version control

A Git client is used to version control projects and to clone projects and configuration from GitHub/GitLab.  Practicalli maintains several editor configurations in shared repositories on GitHub

* Install a Git Client (and optionally GitHub CLI)
* [optionally] clone the [practicalli/dotfiles](https://github.com/practicalli/dotfiles){target=_blank} repository for the Git config and global ignores
* Configure an SSH key to access remote repositories (or Developer token if you cannot use SSH keys)

## Install a git client and GitHub CLI

```
pkg install git gh
```

Clone the [practicalli/dotfiles](https://github.com/practicalli/dotfiles){target=_blank} repository

```
git clone https://github.com/practicalli/dotfiles projects/dotfiles
```

Move or symbolically link the top-level directories to `~/.config`, e.g. for the Git configuration:

```
ln -s projects/dotfiles/git ~/.config/git
```

Edit the `.config/git/config` and update the `core.user`,  `core.name` and `github` or `gitlab` identities


## Create SSH Key for remote repository access

Install the openssh package which contains the `ssh-keygen` command to generate a new public/private key combinations for use with GitHub SSH repository URLs

```
pkg install openssh
```

Generate a key using the email address of the GitHub or GitLab account

```
ssh-keygen -t rsa -C name@domain.tld
```

RET to confirm storing the keys in the default location.

> Usually a passphrase is recommended, however, termux does not seem to save a keyring to save the key passphrase using `ssh-add`.  So the passphrase must be entered each time the key is used, unless a blank passphrase is used.

<!-- If a passphrase was used to generate the key, add the key to the OpenSSH authentication agent on the Operating System -->

<!-- ```bash -->
<!-- ssh-add -->
<!-- ``` -->

Vist your GitHub account settings and create a new SSH key

Use `cat  ~/.ssh/id_rsa.pub` to show the public key contents.  Press the screen to select and copy the public key to the clipboard.

Paste the public key into the GitHub new key form.


## [optional] Create a developer token

A developer token (or ssh key) is required to access GitHub {and far more secure over password}

Should the android device become lost or compromised, the developer token can be deleted to protect the repositories from any malicious access.  The developer token should be limited to the minimal access.  The developer token does not give access to the GitHub or GitLab account.

> HTTPS URLs should be used with a developer token.  git@git.com URLs are for SSH keys only.

Visit GitHub / GitLab settings for your account

Create a new developer token specifically for Termux

Add a descriptive name for the token, based on the device Termuxc is runniung on, e.g. `Termux Pixel2XL`

Check the public_repo and status repo scopes

Generate button creates a new token.

Copy the token using the copy icon.

Edit the `.config/git/config` file and add a github section with the GitHub account name and token

```
[github]
    name = practicalli
    token = ghp_************************************
```

<!-- > TODO: Add a gitlab secion with the same keys if using GitLab -->
<!-- > TODO: How to cache the developer token rather than write it to a file - GitHub CLI -->

> Consider using GitHub CLI to cache the developer token rather than write the token to the Git configuration file for greater security.
