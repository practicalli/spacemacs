# Pull Changes
Commits can be pulled or fetched from remote repositories.

`SPC g s` to open Magit Status buffer

`F` to open the pull menu

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.

Use `e` to pull from a different repository.

> #### Hint::Ensure you are on the correct local branch
> The current local branch is shown at the top of the Magit Status buffer.
> `b b` displays a popup to select a different branch if you are not on the correct branch to pull changes into.


---
> #### TODO::work in progress, sorry
> Pull requests are welcome


## Rebase when pull
`SPC g s` to open Magit Status buffer

`F` to open the pull menu

`r` rebase changes that are not on the remote repository.

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.


## Rebase local commits
`SPC g s` to open Magit Status buffer

`F` to open the pull menu

`-r` rebase local changes that are not on the remote repository.

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.

If there are conflicts between the commits on the remote and local repositories then use the ediff tool or edit the files and delete the confilct markers and resolve conflicting text change.  Save the change and resume the rebase.
