# Amend a commit

First stage any changes you wish to make to the previous commit, i.e. HEAD.

`c` to enter the commit transient state menu

`a` in the commit menu to amend a commit

The commit transient state buffers now appear and show you the details of the previous commit with the additional staged changes.

You can edit the commit message and review the diffs for all the files added to the commit (helping ensure you write a meaningful commit message).

`, ,` to confirm the changes should be committed.

`, k` to cancel changes and leave the previous commit unchanged.

{% youtube %}
https://youtu.be/2NNrc61RVx4?autoplay=1loop=1
{% endyoutube %}


## Why amend a commit

Amend creates a new commit with both the currently staged changes and the change in the previous commit.

If you forgot to include some changes in the last commit, then this is a way to avoid two commits for the same logical change.

As amending also allows you to edit the commit message, this can be updated to fix errors or add more details.


## Reword the previous commit message

`c w` allow you to reword the commit message of the previous commit.

Any staged changes are ignored and not amended to the previous commit.


## Extend the previous commit

`c e` will **immediately** add all staged changes to the previous commit, creating an new commit that replaces the previous commit.  You are not prompted, so use this with caution.

No prompt is given to edit the commit message, so this is only useful if you simply just missed a change or file and the commit message already describes the change in full detail.

> #### HINT::How to undo a commit extend
> `O` to select the Magit Reset menu.
>
> `s` for a soft reset, assuming you only wish to reset the commit (leaves staged and working files as they are).
>
> Select `ORIG_HEAD` to select the unchanged HEAD commit from the remote repository, assuming it has the required commit.


## Amending a commit that is not HEAD

[Interactive rebasing](interactive-rebasing.md) is required to amend a commit that is not currently the HEAD commit.

The amend command only works with the HEAD commit and Git doesn't provide a specific command for modifying a commit other than HEAD.


> #### Hint::Avoid amending shared commits
> Amending a commit will change the commit reference number (the SHA hash code) as this is based in part on the time of commit as well as the contents.
>
> Use the `-f` force flag to push an amended commit to a shared repository (e.g. GitHub or GitLab).
>
> `P -f p` to force push to the remote repository.
