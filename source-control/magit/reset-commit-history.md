# Reset Commit History

Reset allows you to roll back commit history.  The local commit history can be changed by deleting one or more commits and either keeping or discarding the changes.

`O` (capital 0) in the Magit Status buffer opens the reset menu

![Spacemacs Magit - reset menu](/images/spacemacs-magit--reset-menu.png)

| Keybindings | Description                                                                    |
|-------------|--------------------------------------------------------------------------------|
| `s`         | delete the commit, keep the index (staged files) and working directory changes |
| `h`         | remove the commit, index and working directory changes                         |
| `m`         | delete the commit and staged changes (index), keep the working directory       |

Specify or select where to reset the commit history to

![Spacemacs Magit - revert master to HEAD~1](/images/spacemacs-magit--reset-to-head-1.png)

| Reset HEAD to | Description                          |
|---------------|--------------------------------------|
| `HEAD`        | no change, this is the latest commit |
| `HEAD~1`      | first commit before the latest       |
| `HEAD~2`      | second commit before the latest      |

All commits between the current HEAD new HEAD will be removed.

`l l` shows you the updated commit history.

> #### Hint::Changing shared commit history
> Avoid reverting shared history when possible, instead consider using [revert](https://www.atlassian.com/git/tutorials/undoing-changes/git-revert)
>
> Use the `-f` force option if you must push a changed history to a shared repository
>
> `P -f p` to force push to a remote repository.
