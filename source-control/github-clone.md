# GitHub access for github-clone

The github-clone package in the Spacemacs GitHub layer requires a [personal access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) in `~/.gitconfig` to access GitHub.  As `~/.gitconfig` is plain text, adding a token is a potential security risk.

Magit and Magit Forge provides the majority of github-clojure features, except for searching GitHub for a repository.  Magit Forge can [use an `.authinfo.gpg` which provides a high degree of security](forge-configuration.md).

> #### WARNING::Potential security risk
> The github-clone.el package (via gh.el package) requires a personal token to be added to the ~.gitconfig file, which if committed to a shared repository would provide others a way to access your repositories
>
> If an access token is shared, it should be immediately deleted from your GitHub account. Personal access tokens do not provide access to a users GitHub account, so are less of a risk than using a password.


## Configure github-clone

Add your GitHub account name to the Git configuration

```shell
git config --global github.user practicalli
```

Add the personal access token to Git configuration (using your own token)

```shell
git config --global github.oauth-token 5aa705bda08803e0ed59c39e0a4101c0fea0ec3b
```

The `~/.gitconfig` file will be updated and should look similar to this example

![Git configuration - user name and email with GitHub user name and oauth token](/images/git-gitconfig-user-name-email-github-oauth-token.png)

## Move configuration to a .github-private file

To help mistakenly committing the token to a shared repository, move the `[github]` section from `.gitconfig` to a file called `.gitconfig-private`

```bash
  [github]
    user = <your-github-username>
    oauth-token = <01personal02access03token>
```

Add an `[include]` section in the `.gitconfig` fot to include the details from the `.gitconfig-private`

```bash
  [include]
    path = ~/.gitconfig-private
```

The `.gitconfig` file can then safely be committed to a shared Git repository without exposing the access token.
