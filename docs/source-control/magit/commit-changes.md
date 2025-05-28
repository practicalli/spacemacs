# Committing changes

++"c"++ opens the commit menu in the Magit status buffer, allowing you to create, [amend](#amend-commit), [extend](#extend-commit), [reword](#reword-commit), [squash](#reword-commit) commits.

The Magit commit menu can be used to create new commits at the HEAD of the commit history.

![Spacemacs Magit - commit menu](/images/spacemacs-magit-commit-menu.png)

Changing a commit generates a new SHA identity, creating a commit in the history, replacing the current HEAD commit.

| Tool   | Magit           | Description                                                        |
|--------|-----------------|--------------------------------------------------------------------|
| create | ++"c"++ ++"c"++ | creates a new commit and prompts for a commit message              |
| Amend  | ++"c"++ ++"a"++ | add staged changes to HEAD commit and commit message can be edited |
| Reword | ++"c"++ ++"w"++ | edit the commit message, ignore any staged changes                 |
| Extend | ++"c"++ ++"e"++ | add all staged files to the HEAD commit, no message editing        |


## Create a commit

++"c"++ ++"c"++ in Magit status buffer, ++spc++ ++"g"++ ++"s"++ creates a new commit that will become the new HEAD in the commit history.

Two new buffers open

* The commit message buffer - to write multi-line commit messages
* The diff buffer - a visual diff of changes to be included in this commit

* ++comma++ ++comma++ to create the commit
* ++comma++ ++"k"++ to cancel the commit (leaves changes staged)

![Spacemacs Magit - commit or cancel](/images/spacemacs-magit-commit-message-menu.png)


### Writing Commit messages

Type in a suitable commit message that explains the purpose and value of this commit. The first line should be a succinct summary of the purpose of the change.

68 characters is the recommended maximum length of the first line of the commit message.  At 69 characters onward they change color to give a visual guide to the maximum length.  In the body, lines are automatically wrapped once a space is typed after a word that the maximum length.

![Spacemacs Magit - message buffer](/images/spacemacs-magit-commit-message-buffer.png)


### Commit message history

++"g"++ ++"k"++ will paste the previous commit message in the commit message buffer when creating a commit in Magit. Further ++"g"++ ++"k"++  key presses will cycle backwards through the previous commit messages

++"g"++ ++"j"++ will cycle forwards through commit messages

Scrolling through the commit history is a simple way to create consistent style of commit messages without having to look at previous commits separately.

Commit messages are remembered even after a reset (tested with soft reset)

Previous messages are only available once a commit is made. If a change is cancelled, ++comma++ ++"k"++ before the commit then the message is not saved. Instead, select the message and yank, `y`, into the kill ring before killing the commit.


### Linking GitHub issues and Git commits

Including a reference to an issue, e.g. `GH-42` or `#42`, you can link a commit to a GitHub issue.

Include the phrase `Resolve #42` the body of the commit message to automatically close an issue when a commit is pushed to GitHub.

Lines starting with `#` are comments and not included in the commit message, so avoid using the `#42` short form at the start of the line in Magit.



## Amend commit

Stage changes to be added to the last commit, i.e. HEAD.

++"c"++ to enter the commit transient state menu

++"a"++ in the commit menu to amend a commit

The commit transient state buffers appear and shows details of the previous commit with the additional staged changes.

Edit the commit message and review the diffs for all the files added to the commit (ensuring a meaningful commit message is written).

++comma++ ++comma++ to confirm the changes should be committed.

++comma++ ++"k"++ to cancel changes and leave the previous commit unchanged.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/2NNrc61RVx4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


??? HINT "Force push a shared commit"
    If a commit is changed after it is pushed to a remote repository, then a force push will be required.  Please confirm with other maintainers of the code if a force push is acceptable as it could interrupt their development.  A more suitable practice can be to create a new commit and push that rather than rewrite history.

    `P` opens the Push menu in Magit status buffer (`SPC g s`).

    `-f` sets the force-with-lease option to rewrite the shared history in the remote repository

    `p` pushes to the new commit to the remote repository and replaces the HEAD commit in that repository.


### Why amend a commit

Amend creates a new commit with both the currently staged changes and the change in the previous commit.

If you forgot to include some changes in the last commit, then this is a way to avoid two commits for the same logical change.

As amending also allows you to edit the commit message, this can be updated to fix errors or add more details.


### Reword commit message

++"c"++ ++"w"++ allow you to reword the commit message of the previous commit. The new commit replaces the current HEAD commit.

Any staged changes are ignored and not amended to the previous commit.


## Extend commit

++"c"++ ++"e"++ will **immediately** add all staged changes to the previous commit, creating an new commit that replaces the previous commit.  You are not prompted, so use this with caution.

No prompt is given to edit the commit message, so this is only useful if you simply just missed a change or file and the commit message already describes the change in full detail.

??? HINT "How to undo a commit extend"
    ++o++ to select the Magit Reset menu.

    ++"s"++ for a soft reset, assuming you only wish to reset the commit (leaves staged and working files as they are).

    Select `ORIG_HEAD` to select the unchanged HEAD commit from the remote repository, assuming it has the required commit.


### Amending a commit that is not HEAD

[Interactive rebasing](interactive-rebasing.md) is required to amend a commit that is not currently the HEAD commit.

The amend command only works with the HEAD commit and Git doesn't provide a specific command for modifying a commit other than HEAD.


!!! Hint "Avoid amending shared commits"
    Amending a commit will change the commit reference number (the SHA hash code) as this is based in part on the time of commit as well as the contents.

    Use the `-f` force flag to push an amended commit to a shared repository (e.g. GitHub or GitLab).

    ++p++ ++minus++ ++"f"++ ++"p"++ to force push to the remote repository.



## Force push a shared commit

If you already shared a commit that you want to extend, please ask those you work with if its okay (as it could interrupt their development).  For shared commits, its better practice to create a new commit and push that rather than rewrite history.

`P` opens the Push menu in Magit status buffer (`SPC g s`).

`-f` sets the force-with-lease option to rewrite the shared history in the remote repository

`p` pushes to the new commit to the remote repository and replaces the HEAD commit in that repository.



## Squash Commits

`c` to enter the commit transient state menu

`s` in the commit menu to amend a commit

The top buffer shows the local Git log, listing all the commit history.

The bottom buffer shows the magit-diff output, so you can see all the changes of the current commit.

![Spacemacs Magit - Commit Squash](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-magit-commit-squash-example.png?raw=true)

Move the cursor to the commit you wish to squash into its previous commit

`, ,` or `C-c C-c` to confirm the commit(s) should be squashed.

`, k` or `C-c C-k` to cancel changes and leave the commit history unchanged.


### Why Squash commits

The commit history should help the development team understand the reasons for changes as well as what has actually changed.

Squashing commits is useful for joining together commits that form a logical change.  If a change is spread over several commits, then squashing those commits together can improve the commit history.


!!! HINT "Avoid squashing shared commits"
    Squashing a commit will change the commit reference number (the SHA hash code) as this is based in part on the time of commit as well as the contents.

    If you need to squash a commit history that has already been shared you should tell everyone before doing so as they will have to pull the new commit history.

    Use the `-f` force flag to push a squashed commit to a shared repository (e.g. GitHub or GitLab).

    `P -f p` to force push to the remote repository.
