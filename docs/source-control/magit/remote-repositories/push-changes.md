# Push Changes
Commits can be pushed to a remote repository using Magit Status buffer.

> #### Hint::Ensure you are on the correct local branch
> The current local branch is shown at the top of the Magit Status buffer.
> `b b` displays a popup to select a different branch if you are not on the correct branch to pull changes into.

`SPC g s` to open Magit Status buffer

`P` to open the pull menu

`u` to pull from the upstream remote repository.  If this is not currently set, then a prompt appears to select the default upstream.


## Push options
Changing the local history with a commit amend, extend, reword, rebase or squash will prevent changes being pushed to a remote repository that has the original history unchanged.

Magit will show `Unpulled from` and `Unpushed to` sections when the local and remote histories are different.

![Spacemacs Magit Push - changed histories](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-push-changed-history.png)

The push menu has the `-f` switch to force a push with a lease (the recommended force type).

> #### Hint::Fix rather than Force
> Pushing a new commit that fixes an issue is usually preferable than re-writing history and forcing a push when working on a shared repository.
>
> Communicate clearly in advance and get agreement from other contributors if a force is the only option.


## Pushing changes to an open pull request

{% youtube %}
https://youtu.be/gwFGSVtFrgQ
{% endyoutube %}
