# Create a commit

`c c` in Magit status buffer (`SPC g s`) creates a new commit that will become the new HEAD in the commit history.

Two new buffers open
* The commit message buffer - to write multi-line commit messages
* The diff buffer - a visual diff of changes to be included in this commit

## Commit message
Type in a suitable commit message that explains the purpose and value of this commit.

The first line should be a succinct summary of the purpose of the change.

68 characters is the recommended maximum length of the first line of the commit message.  At 69 characters onward they change colour to give a visual guide to the maximum length.

![Spacemacs Magit - message buffer](/images/spacemacs-magit-commit-message-buffer.png)


* `, ,` to create the commit
* `, k` to cancel the commit (leaves changes staged)

![Spacemacs Magit - commit or cancel](/images/spacemacs-magit-commit-message-menu.png)


> #### Hint::Linking GitHub issues and Git commits
> Including a reference to an issue, e.g. `GH-42` or `#42`, you can link a commit to a GitHub issue.
>
> Include the phrase `Resolves #42` or `Closes #42` anywhere in the commit message to automatically close an issue when a commit is pushed to GitHub.
>
> Avoid using the `#42` short form at the start of the line in Magit. Lines starting with `#` are comments and not included in the commit message.
