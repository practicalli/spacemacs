# Magit Forge

Magit can retrieve issues and pull request for a project and even create a new pull request, when connect to services provided by GitHub, GitLab and your own hosted environments.  Magit uses Forge to talk to these services.

> #### Hint::Configure Git access and define a gpg key first
> You should [configure Git access](git-configuration.md) to repositories on these services before configuring Forge
> You should [create a gpg key](encryption/create-gpg-key.md) (Pretty Good Privacy) to encrypt your GitHub/GitLab personal access token in a file called `.authinfo.gpg`.

## Set the username for the service used

Add your Forge username to your `~/.gitconfig` file for your operating system account.

For example, if your username on GitHub is `practicalli`, then run this command in a terminal:

```shell
git config --global github.user practicalli
```

Replace `github.user` with `gitlab.user` if you are using GitLab.


## Generating a token for API access

You need a token for GitHub or GitLab, which can be generated via your account on those services.
* [GitHub personal access tokens](https://github.com/settings/tokens)
* [GitLab personal access tokens](https://gitlab.com/profile/personal_access_tokens)

Personal Access tokens can be revoked and recreated at any time.  They are a safer approach than using your GitHub password.

> #### Hint::GitHub layer configuration
> Creating a personal access token is the same as setup in the [GitHub layer configuration](github-configuration.md), however, you may wish to create a separate token for added security.


### Create an encrypted .authinfo.gpg file

Create a file called `~/.authinfo`

Add the Auth Source line to the file, using your GitHub or GitLab name and associated personal access token.

For example, the GitHub account name is practicalli and the personal access token is the password (this is not a real token or account, do not share your token publicly)
```
machine api.github.com login practicalli^forge password 01personal02access03token
```

Use `SPC SPC epa-encrypt-file` to encrypt the file with gpg.  A prompt shows to select an account to encrypt too (select `OK` if no keys have been created).

![Spacemacs - Magit Forge - epa-encrypt-file - select account](/images/spacemacs-magit-forge-pgp-encrypt-authinfo-pgp.png)

At the next prompt, enter the password to encrypt the file.

A new encrypted file is created using the original name with `.gpg` postfixed to the end, creating the  `~/.authinfo.gpg` file.

`SPC f f` and open `~/.authinfo.gpg` to check Emacs can decrypt the file.  A plain text version of the file will open and a message appears in the mini-buffer saying the file is being decrypted.

Finally, delete the `~/.authinfo` file, so the token is no longer stored as plain text.


## Configure Spacemacs to use authentication
Add the preferred file in which to store your token, by default this is `.authinfo`.  It is recommended to store this in `~/.authinfo.gpg`

Add `auth-sources` to specify the location of the encrypted token file in the `dotspacemacs/user-config` section of your `.spacemacs` file
```elisp
  ;; Set the files that are searched for writing tokens
  ;; by default ~/.authinfo will be used
  (setq auth-sources '("~/.authinfo.gpg"))
```

[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration contains this setting.


## Configure the number of open and closed topics shown in forge
A topic is an issue or pull request and the list of each can be configured to display a number of open and closed items.

The configuration will show 100 open topics and never show any closed topics, for both issues and pull requests.

```lisp
 (setq  forge-topic-list-limit '(100 . 0))
```

To occasionally show closed topics, set the closed value to a negative number to the number of closed items wanted to be displayed.

`SPC SPC forge-toggle-closed-visibility` to toggle the view of closed topics in each list
```lisp
 (setq  forge-topic-list-limit '(100 . -10))
```

The first number is the open items to be displayed, the second number is the closed items to display.  `0` means no items will be displayed.

[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration contains this setting.
