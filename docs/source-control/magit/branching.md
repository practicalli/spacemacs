# Branching in Magit
Every Git commit is made on a branch, the default branch name is master. A new branch should be created when developing a new feature, especially when working on an pull request. Branches are used to [try pull requests](/source-control/magit/try-pull-requests.md) made by others.

![Spacemacs Magit branching menu](/images/spacemacs-magit-branching-menu.png)

# Creating a branch
`SPC g s` opens the Magit Status buffer.

`b c` creates a new branch, first prompting for the name of the existing branch to use as the starting point, then prompting for the name of the new branch.

Alternative, `b s` creates a tracking branch, useful when working with existing remote branches

## Branch from an earlier commit
`SPC g s` opens the Magit status buffer

`b b` to select a different branch if required (optional)

`l l` opens a long log, showing all the commits from the current branch

`j`/`k` to navigate the commit history.  Move to the commit on which to make a new branch

`b c` to create a new branch from the current commit, prompting for the name of the new branch.

The new branch is now set.
