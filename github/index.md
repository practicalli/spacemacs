# Github

To work with repositories or gists on Github.com, add the `github` layer to your `~/.spacemacs` configuration file and reload your configuration `SPC f e R` or restart Spacemacs, `SPC q r`.

## Working with remote Git repositories

You can push changes to any repositories your local git repository is connected to.

> ****TODO:: Better Description required

## Sharing pieces of code with Gists

[Github Gists](https://gist.github.com/) are really useful when you want to share a piece of code or configuration without setting up or sharing a complete a git project.  Rather than copy & paste into a [Github Gists](https://gist.github.com/) website, you can create a Gist from any [Spacemacs](https://github.com/syl20bnr/spacemacs) buffer with a single command.



# Connecting to your Github account

> ####Warning:: validate this approach

When you first run any of the Gist or Github commands you will be prompted for your username, password and 2Factor code.  The Gist.el code will [create a personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) on your Github account, avoiding the need to prompt for your Github login details each time.

If you are prompted to enter your personal access token in Emacs, then visit your Github profile page and view the **personal acccess tokens** section.  Edit the token named `git.el` and regenerated the token.  This will take you back to the personal access tokens page and display the new token for git.el.  Copy this token into the `[github]` section of your `~/.gitconfig` as follows

```
[github]
    user = jr0cket
    oauth-token = thisishweretherealtokenshouldbepasted
```

> If `git.el` adds a password line to the `[github]` section of your `~/.gitconfig` you should remove that password line.  These Github actions only require your username and token.
