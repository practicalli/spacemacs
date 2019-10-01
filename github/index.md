# Github

To work with repositories or gists on Github.com, add the `github` layer to your `~/.spacemacs` configuration file and reload your configuration `SPC f e R` or restart Spacemacs, `SPC q r`.

Most commands are already available via the Magit menu, `SPC g`

[![Spacemacs Git menu](/images/spacemacs-git-menu.png)](/images/spacemacs-git-menu.png)

Browsing and cloning remote repositories is via the Git Github menu, `SPC g h`.

[![Spacemacs Git menu](/images/spacemacs-git-github-menu.png)](/images/spacemacs-git-menu.png)

And there is a specific menu for Cloning remote Github repositories.

[![Spacemacs Git menu](/images/spacemacs-git-github-clone-menu.png)](/images/spacemacs-git-menu.png)


## Working with remote Git repositories

You can push changes to any repositories your local git repository is connected to.


## Sharing pieces of code with Gists

[Github Gists](https://gist.github.com/) are really useful when you want to share a piece of code or configuration without setting up or sharing a complete a git project.  Rather than copy & paste into a [Github Gists](https://gist.github.com/) website, you can create a Gist from any [Spacemacs](https://github.com/syl20bnr/spacemacs) buffer with a single command.

[![Spacemacs Git menu](/images/spacemacs-git-gist-menu.png)](/images/spacemacs-git-menu.png)


## Connecting to your Github account

> #### TODO:: Determine correct location of personal token
> Confirm if `~/.gitconfig` or `.authinfo` is the right file for personal token
>
> It seems that Ghub is used now by Magit to connect to Github via its API (including GraphQL)
> https://emacsair.me/2018/03/20/ghub-2.0/
> Spacemacs should generate the token for you and add it to your Github account, after prompting you for username, password and 2FA.
> The personal token is saved in the `~/.authinfo`.  I will remove the token from `.gitconfig` and test.
> The following section needs updating.

When you first run any of the Gist or Github commands you will be prompted for your username, password and 2Factor code.

Entering correct account details will [create a personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) on your Github account.  This personal access token is also copied to your local Git config, `~/.gitconfig`, avoiding the need to prompt for your Github login details each time.

> ####Hint::Managing your personal access token
> If you are prompted to enter your personal access token in Emacs, then visit your Github profile page and view the **personal acccess tokens** section.  Edit the token named `git.el` and regenerated the token.  This will take you back to the personal access tokens page and display the new token for git.el.  Copy this token into the `[github]` section of your `~/.gitconfig` as follows
```
[github]
    user = jr0cket
    oauth-token = thisishweretherealtokenshouldbepasted
```
>
> If `git.el` adds a password line to the `[github]` section of your `~/.gitconfig` you should remove that password line.  These Github actions only require your username and token.
