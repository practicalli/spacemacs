# GitHub access for github-clone

++spc++ ++"g"++ ++"c"++ can clone a remote repository from GitHub / GitLab.

Using an SSH URL and an SSH key, then no further configuration is required.

Using an HTTPS URL required the configuration of a developer token.


!!! HINT "Use Magit as a GitHub Client"
    Magit and Magit Forge provides the majority of github-clojure features, except for searching GitHub for a repository.  Magit Forge can [use an `.authinfo.gpg` which provides a high degree of security](forge-configuration.md).


## GitHub CLI

[GitHub CLI](https://cli.github.com/){target=_blank} will generate a developer token each time the [auth login command](https://cli.github.com/manual/gh_auth_login){target=_blank} is issued

```shell
git auth login
```

## Configure developer token

??? WARNING "Developer tokens should have limited life-span"
    Saving a developer token to the file space, especially in a file that could be included in version control and pushed to a remote server is a security issue.

    Using GitHub CLI can minimise the risk by recycling the tokens.  Or create tokens with a very short life-span via the GitHub / GitLab website.

    The github-clone package in the Spacemacs GitHub layer requires a [personal access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) in `~/.gitconfig` to access GitHub.  As `~/.gitconfig` is plain text, adding a token is a potential security risk.

    If an access token is shared, it should be immediately deleted from your GitHub account. Personal access tokens do not provide access to a users GitHub account, so are less of a risk than using a password.

Add your GitHub account name to the Git configuration

```shell
git config --global github.user practicalli
```

Add the personal access token to Git configuration (using your own token)

```shell
git config --global github.oauth-token 5aa705bda08803e0ed59c39e0a4101c0fea0ec3b
```

The `~/.gitconfig` file will be updated and should look similar to this example

![Git configuration - user name and email with GitHub user name and oauth token](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/git-gitconfig-user-name-email-github-oauth-token.png)


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
