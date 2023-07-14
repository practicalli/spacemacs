# Configure default upstream remote branch

The first time you pull changes from a repository (or if cloning via Magit), the default upstream remote and branch is set.

`F u` will pull all the changes from the default upstream remote branch.

![Spacemacs Magit pull default upstream](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-pull-upstream-default.png)


## Changing the default remote

To change the default upstream, first unset the default value and then add a new default.

`F` to open the pull menu

`C` to open the configuration of the local repository

![Spacemacs Magit Pull remote default configuration](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-remotes-pull-default-configure.png)

`u` to unset the default upstream branch (removed the description too)

`u` to add a new upstream branch as the default, showing a list of all possible remote branches.

`RTN` to choose a branch

`G-g` to close the configuration menu.  Then either `u` to pull from the new default upstream branch, or `C-g` to exit the pull menu.
