# Squash Commits

`c` to enter the commit transient state menu

`s` in the commit menu to amend a commit

The top buffer shows the local Git log, listing all the commit history.

The bottom buffer shows the magit-diff output, so you can see all the changes of the current commit.

![Spacemacs Magit - Commit Squash](/images/spacemacs-magit-commit-squash-example.png)

Move the cursor to the commit you wish to squash into its previous commit

`, ,` or `C-c C-c` to confirm the commit(s) should be squashed.

`, k` or `C-c C-k` to cancel changes and leave the commit history unchanged.


## Why Squash commits

The commit history should help the development team understand the reasons for changes as well as what has actually changed.

Squashing commits is useful for joining together commits that form a logical change.  If a change is spread over several commits, then squashing those commits together can improve the commit history.


> #### Hint::Avoid squashing shared commits
> Squashing a commit will change the commit reference number (the SHA hash code) as this is based in part on the time of commit as well as the contents.  If you need to squash a commit history that has already been shared you should tell everyone before doing so as they will have to pull the new commit history.
>
> Use the `-f` force flag to push a squashed commit to a shared repository (e.g. GitHub or GitLab).
>
> `P -f p` to force push to the remote repository.
