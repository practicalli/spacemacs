# Push Changes
Commits can be pushed to a remote repository using Magit Status buffer.

> #### Hint::Ensure you are on the correct local branch
> The current local branch is shown at the top of the Magit Status buffer.
> `b b` displays a popup to select a different branch if you are not on the correct branch to pull changes into.

`SPC g s` to open Magit Status buffer

`P` to open the pull menu

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.


## Push options
`-f` to force a push, should the remote repository have a conflicting change history (avoid this when working with other people)


> #### TODO::work in progress, sorry
> Pull requests are welcome
