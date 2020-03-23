# Pull Changes
Commits can be pulled from remote repositories using Magit Status buffer.

> #### Hint::Ensure you are on the correct local branch
> The current local branch is shown at the top of the Magit Status buffer.
> `b b` displays a popup to select a different branch if you are not on the correct branch to pull changes into.

`SPC g s` to open Magit Status buffer

`F` to open the pull menu

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.


## Pull options
`-r` rebase local changes that are not on the remote repository.


> #### TODO::work in progress, sorry
> Pull requests are welcome
