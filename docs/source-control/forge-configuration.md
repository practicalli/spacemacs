# Magit Forge

Magit can retrieve issues and pull request for a project and even create a new pull request, when connect to services provided by GitHub, GitLab and your own hosted environments.  Magit uses Forge to talk to these services and refers to these services collectively as forges.

!!! Hint "Configure Git identity and create a GPG key first"
    [Configure a Git identity](git-configuration.md) to repositories on these services before configuring Forge

    [Create a gpg key](/encryption/create-gpg-key.md) (Pretty Good Privacy) to encrypt your GitHub/GitLab personal access token in a file called `.authinfo.gpg`.


## Set username for the Forge service

Add your Forge username to your `~/.gitconfig` file for your operating system account.

For example, if your username on GitHub is `practicalli`, then run this command in a terminal:

```shell
git config --global github.user practicalli
```

If using GitLab, replace `github.user` with `gitlab.user` in the above command.


## Generating a token for API access

A personal access token is used to authenticate your identify with the forge. The respective services provide a means to generate that token:

* [GitHub personal access tokens](https://github.com/settings/tokens){target=_blank} should be created with `repo`, `user` and `read:org` permissions.
* [GitLab personal access tokens](https://gitlab.com/profile/personal_access_tokens){target=_blank} should be created with `api` permissions.

Personal Access tokens can be revoked and recreated at any time, so are a safer approach than using a password.  Some services will prevent authentication via password, so a token is the only option.

!!! WARNING "GitHub fine-grained tokens not supported"
    GitHub are introducing fine-grained developer tokens, although they are not supported for accessing the [GitHub GraphQL API](https://docs.github.com/en/graphql/guides/forming-calls-with-graphql){target=_blank} which Forge uses for Issues and Pull Requests.  Create a so-called classic developer token.

### Encrypted forge connection in .authinfo.gpg

++spc++ ++"f"++ ++"f"++ and open a file called `~/.authinfo`.  If the file does not exist it will be created when saving the file.

Add the Auth Source line to the file, using your GitHub or GitLab name and associated personal access token. For example, the GitHub account name is practicalli and the personal access token is the password (this is not a real token or account, do not share your token publicly)

```
machine api.github.com login practicalli^forge password 01personal02access03token
```

++spc++ ++"a"++ ++y++ ++"e"++ to call `epa-encrypt-file`

![Spacemacs Encryption - eazypg encrypt file - authinfo](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-encryption-eazypg-encript-file-authinfo.png)

Select recipients for encryption prompt, so select a PGP key to encrypt the file with.

++"j"++ and ++"k"++ to navigate to line with existing PGP key

 ++"m"++ to toggle mark the key to use (should show a star next to the key)

++enter++ with cursor over the `[ok]` text menu in the pop-up

A new encrypted file is created using the original name with `.gpg` postfixed to the end, creating the  `~/.authinfo.gpg` file.

++spc++ ++"f"++ ++"f"++ and open `~/.authinfo.gpg` to check Emacs can decrypt the file.  A plain text version of the file will open and a message appears in the mini-buffer saying the file is being decrypted.

Finally, delete the `~/.authinfo` file, so the token is no longer stored as plain text.


!!! INFO "Without a PGP key"
    When the recipients for encryption prompt appears, select `OK` if no keys have been created. At the next prompt, enter the password to encrypt the file.

![Spacemacs - Magit Forge - epa-encrypt-file - select account](/spacemacs/spacemacshttps://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-forge-pgp-encrypt-authinfo-pgp.png)


#### Encrypt and decrypt via terminal CLI

Open a terminal and encrypt the `.authinfo` file using the following command, specifying the email address of the key to use for the encryption

```
gpg --output ~/.authinfo.gpg --encrypt --recipient email-name@domain.tld ~/.authinfo
```

Decrypt the `.authinfo.gpg` file using:

```
gpg --output ~/.authinfo --decrypt ~/.authinfo.gpg
```


## Configure Spacemacs to use authentication

Add the preferred file in which to store your token, by default this is `.authinfo`.  It is recommended to store this in `~/.authinfo.gpg`

Add `auth-sources` to specify the location of the encrypted token file in the `dotspacemacs/user-config` section of your `.spacemacs` file

```elisp
  ;; Set the files that are searched for writing tokens
  ;; by default ~/.authinfo will be used
  (setq auth-sources '("~/.authinfo.gpg"))
```

If using `XDG_CONFIG_HOME` for the location of the `authinfo.gpg` file.  The default location in `HOME` can also be included and the first file found will be used.

```elisp
  (setq auth-sources (list
                      (concat (getenv "XDG_CONFIG_HOME") "/authinfo.gpg")
                      "~/.authinfo.gpg"))  ; (1)!
```

1.  [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} configuration contains the `auth-sources` setting.


## Configure the number of open and closed topics shown in forge

A topic is an issue or pull request and the list of each can be configured to display a number of open and closed items.

The configuration will show 100 open topics and never show any closed topics, for both issues and pull requests.

```lisp
 (setq  forge-topic-list-limit '(100 . 0))  ; (1)!
```

1.  [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} configuration contains the forge list limit settings.

To occasionally show closed topics, set the closed value to a negative number to the number of closed items wanted to be displayed.

`SPC SPC forge-toggle-closed-visibility` to toggle the view of closed topics in each list

```lisp
 (setq  forge-topic-list-limit '(100 . -10))  ; (1)!
```

1.  [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} configuration contains the forge list limit settings.

The first number is the open items to be displayed, the second number is the closed items to display.  `0` means no items will be displayed.



## Hosted environments

For GitHub enterprise or GitLab self-hosted service, [specify the user and API](https://magit.vc/manual/ghub/Setting-the-Username.html#Setting-the-Username){target=_blank} that Forge should use to connect for the hosted service service

For example, if the API is available at https://practical.li/api/v3

Set the username for the specific service in the `~/.gitconfig` file:

```shell
git config --global github.example.com/api/v3.user EMPLOYEE
```

Add the API location to the local configuration of every repository that will use that service

```shell
cd /path/to/repo
git config github.host example.com/api/v3
```
* [Using magit GitHub Enterprise](https://mrdias.com/2018/04/01/using-magit-with-github-enterprise.html){target=_blank} - Jorge Dias
