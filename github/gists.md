# Github Gists

[Github Gists](https://gist.github.com/) are really useful when you want to share a piece of code or configuration without setting up or sharing a complete a git project.  Rather than copy & paste into a [Github Gists](https://gist.github.com/) website, you can create a Gist from any [Spacemacs](https://github.com/syl20bnr/spacemacs) buffer with a single command.

All you need is to add the `github` layer to your `~/.spacemacs` configuration file and reload your configuration `M-m f e R` or restart Spacemacs.  Lets see just how easy it is to use Gists with Spacemacs. 


# Connecting to your Github account

When you first run any of the Gist or Github commands you will be prompted for your username, password and 2Factor code.  The Gist.el code will [create a personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) on your Github account, avoiding the need to prompt for your Github login details each time.

If you are prompted to enter your personal access token in Emacs, then visit your Github profile page and view the **personal acccess tokens** section.  Edit the token named `git.el` and regenerated the token.  This will take you back to the personal access tokens page and display the new token for git.el.  Copy this token into the `[github]` section of your `~/.gitconfig` as follows

```
[github]
	user = jr0cket
	oauth-token = thisishweretherealtokenshouldbepasted
```

> If `git.el` adds a password line to the `[github]` section of your `~/.gitconfig` you should remove that password line.  These Github actions only require your username and token.

# Creating a Gist from Spacemacs 

The current buffer can be copied into a Github Gist using the command `M-x gist-buffer`.

![Gist - create a Gist from the current buffer](/images/spacemacs-gist-create-from-buffer.png)

You can also create a gist just from a selected region of the buffer.  First select the region using `C-SPC` and run the command `M-x gist-region`.

> If this is the first time using Github from Spacemacs, you will be prompted for your Github username & password.  If you have already used Github from Spacemacs, then your account details will have been saved so you do not need to enter them each time.

**Keyboard shortcuts**
- `M-m g g b` : create a public gist from the current Spacemacs buffer
- `M-m g g B` : create a private gist from the current Spacemacs buffer
- `M-m g g r` : create a public gist from the highlighted region
- `M-m g g R` : create a private gist from the highlighted region
- `M-m g g l` : list all gists on your github account

> Replace `M-m` with `SPC` if you are using Spacemacs evil mode 

# Updating a Gist 

When you create a Gist from a buffer there is no direct link between your buffer and the Gist.  So if you make changes to your buffer you want to share, you can generate a new gist using `M-x gist-buffer` & delete the original one (see listing & managing gists below).

Alternatively, once you have created a Gist, you can open that Gist in a buffer and make changes.  When you save your changes in the Gist buffer, `C-x C-s`, the gist on gist.github.com is updated.


# Listing & managing Gists 

Use the command `M-x gist-list` or keybinding `M-m g g l` to show a list of your current Gists.

![Spacemacs - Gist list](/images/spacemacs-gist-list.png)

In the buffer containing the list of your gists, you can use the following commands

* `RETURN` : opens the gist in a new buffer
* `g` : reload the gist list from server
* `e` : edit the gist description, so you know what this gist is about
* `k` : delete current gist
* `b` : opens the gist in the current web browser 
* `y` : show current gist url & copies it into the clipboard
* `*` : star gist (stars do not show in gist list, only when browsing them on github)
* `^` : unstar gist
* `f` : fork gist - create a copy of your gist on gist.github.com
* `+` : add a file to the current gist, creating an additional snippet on the gist
* `-` : remove a file from the current gist 

# Creating Gists from files

If you open a dired buffer you can make gists from marked files, `m`, by pressing `@`.  This will make a public gist out of marked files (or if you use with a prefix, it will make private gists)

![Gist - create a gist from the marked files in dired](/images/spacemacs-gist-dired-gist-from-file.png)
