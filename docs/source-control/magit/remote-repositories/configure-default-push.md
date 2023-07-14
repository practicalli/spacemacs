# Configure default push remote branch

The first time you pull changes from a repository, or clone via Magit, a prompt in the mini-buffer asks if the current remote branch should be used as the default remote repository to push to.

`P p` will push changes to the default push remote repository.  A list of remotes is shown if no default remote is set.

![Spacemacs Magit push default upstream](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-push-remote-default.png)


## Changing the default remote

The default push remote can be selected from remote repositories added as a remote, by cloning or using the `M` remote menu in the Magit Status buffer.

`P` to open the push menu

`C` to open the configuration of the local repository

![Spacemacs Magit Push remote default configuration](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-remotes-push-default-configure.png)

`P` to toggle the default upstream branch between remotes

`u` to add a new upstream branch as the default, showing a list of all possible remote branches.

`RTN` to choose a branch

`G-g` to close the configuration menu.  Then either `u` to pull from the new default upstream branch, or `C-g` to exit the pull menu.
