# Git configuration for GitHub access

[Generate an SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and [add it to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).

By using an SSH key it remove the need to enter your GitHub credentials each time you work with a remote repository (push, pull, clone, etc.).

> ####Hint::SSH Key Passphrase
> Practicalli recommends setting a passphrase on your key and adding that passphrase to a keyring tool.  Ubuntu desktop has a key ring tool installed, so the first time you use your SSH key it will prompt you to save it and you can select that the key is unlocked when you login to the computer.

### Add GitHub access to Git configuration

Spacemacs requires a personal access token to communicate with the GitHub API, allowing Spacemacs to act on behalf of your account.

First add your GitHub account name to the Git configuration

```shell
git config --global github.user practicalli
```

### Add GitHub personal access token

Visit your GitHub account and [generate a personal access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line).

The token should have the `repo` and `gists` permissions

Add the personal access token to Git configuration (using your own token)

```shell
git config --global github.oauth-token 5aa705bda08803e0ed59c39e0a4101c0fea0ec3b
```

The `~/.gitconfig` file will be updated and should look similar to this example

![Git configuration - user name and email with GitHub user name and oauth token](/images/git-gitconfig-user-name-email-github-oauth-token.png)
