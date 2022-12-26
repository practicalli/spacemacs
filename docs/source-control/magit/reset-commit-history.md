# Reset Commit History

Reset allows you to roll back commit history.  The local commit history can be changed by removing one or more commits and either keeping or discarding staged and local working copy changes.

 ++shift+"o"++ in the Magit Status buffer opens the reset menu

| Key binding | Description                                                      |
|-------------|------------------------------------------------------------------|
| ++"s"++     | remove the commit, keep the staged and working directory changes |
| ++"h"++     | remove the commit, staged and working directory changes          |
| ++"m"++     | remove the commit and staged changes, keep the working directory |
| ++"i"++     | remove staged changes only                                       |
| ++"w"++     | remove working directory changes only                            |
| ++"f"++     | reset a specific file                                            |


## Using recent commits or log

Navigating the recent commits list on the magit status buffer or viewing the log list, `l l`, provides a simple way to reset to a specific commit, especially further back in the git history.

++"j"++ and ++"k"++ to navigate to the commit in the history to reset to,the commit that will be the new HEAD.

++shift+"o"++ to initiate a reset and choose the scope of the reset to carry out (commit, staging, working directory).

![Spacemacs Magit reset via recent commits list](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-reset-via-recent-commits-list.png)


## Specifying a commit to reset to

Specify or select where to reset the commit history to

![Spacemacs Magit - revert master to HEAD~1](/images/spacemacs-magit--reset-to-head-1.png)

| Reset HEAD to | Description                          |
|---------------|--------------------------------------|
| `HEAD`        | no change, this is the latest commit |
| `HEAD~1`      | first commit before the latest       |
| `HEAD~2`      | second commit before the latest      |

All commits between the current HEAD new HEAD will be removed.

++"l"++ ++"l"++ shows the updated commit history.

!!! HINT "Changing shared commit history"
    Avoid reverting shared history when possible, instead consider using [revert](https://www.atlassian.com/git/tutorials/undoing-changes/git-revert){target=_blank} or create a new commit that resolves the issue

    Use the ++minus++ ++"f"++ force option if you must push a changed history to a shared repository

    ++p++ ++minus++ ++"f"++ ++"p"++ to force push to a remote repository.
