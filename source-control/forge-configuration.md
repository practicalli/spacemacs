# Magit Forge

Magit can retrieve issues and pull request for a project and even create a new pull request, when connect to services provided by GitHub, GitLab and your own hosted environments.  Magit uses Forge to talk to these services and Forge uses ghub for authentication.

> #### Hint::Configure Git access and define a gpg key first
> You should [configure Git access](git-configuration.html) to repositories on these services before configuring Forge
> You should [create a gpg key](encryption/create-gpg-key.md) (Pretty Good Privacy) to encrypt your GitHub/GitLab personal access token in a file called `.authinfo.gpg`.

## Set the username for the service used
Add your GitHub or GitLab username to your `~/.gitconfig` file for your operating system account.

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
> Creating a personal access token is the same as setup in the GitHub layer configuration, however, you may require more access for the token.  In which case, create a specific token for forge access.

TODO: find out what access is required for a personal access token to use forge.  If its just repo, then the token used to configure github access previously should be enough.


## Configuring Forge

Add the preferred file in which to store your token, by default this is `.authinfo`.  It is recommended to store this in `~/.authinfo.gpg`

Add this to `dotspacemacs/user-config` section of your `.spacemacs` file
```elisp
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Magit - forge configuration
  ;;
  ;; Set the files that are searched for writing tokens
  ;; by default ~/.authinfo will be used
  ;; and write a token in unencrypted format
  (setq auth-sources '("~/.authinfo.gpg"))
  ;;
  ;; End of Magit - forge configuration
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
```


### Create an encrypted .authinfo.gpg file

Create a file called `~/.authinfo`

Add the Auth Source line to the file, using your GitHub or GitLab name and associated personal access token.

For example, my GitHub account name is practicalli and I included a fake personal access token as the password
```
machine api.github.com login practicalli^forge password 01personal02access03token
```

Use `SPC SPC epa-encrypt-file` to encrypt the file with gpg.  You are prompted to select an account to encrypt too (I had no accounts listed, possibly as I have no gpg keys).

![Spacemacs - Magit Forge - epa-encrypt-file - select account](/images/spacemacs-magit-forge-pgp-encrypt-authinfo-pgp.png)

You are prompted for a password to use to encrypt the file.

A new encrypted file is created using the original name with `.gpg` postfixed to the end, creating the  `~/.authinfo.gpg` file.

`SPC f f` and open `~/.authinfo.gpg` to check Emacs can decrypt the file.  You should see the plain text version of the file and a message in the mini-buffer saying the file is being decrypted.

To check the file is encrypted, view it in an editor that does not use GPG.  For example, `less ~/.authinfo.gpg`.

Finally, delete the `~/.authinfo` file, so your token is no longer stored in plain text.
