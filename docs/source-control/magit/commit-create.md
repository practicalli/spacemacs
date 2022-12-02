# Create a commit

`c c` in Magit status buffer (`SPC g s`) creates a new commit that will become the new HEAD in the commit history.

Two new buffers open
* The commit message buffer - to write multi-line commit messages
* The diff buffer - a visual diff of changes to be included in this commit

* `, ,` to create the commit
* `, k` to cancel the commit (leaves changes staged)

![Spacemacs Magit - commit or cancel](/images/spacemacs-magit-commit-message-menu.png)


## Writing Commit messages
Type in a suitable commit message that explains the purpose and value of this commit. The first line should be a succinct summary of the purpose of the change.

68 characters is the recommended maximum length of the first line of the commit message.  At 69 characters onward they change color to give a visual guide to the maximum length.  In the body, lines are automatically wrapped once a space is typed after a word that the maximum length.

![Spacemacs Magit - message buffer](/images/spacemacs-magit-commit-message-buffer.png)


## Commit message history
`g k` will paste the previous commit message in the commit message buffer when creating a commit in Magit. Further `g k` key presses will cycle backwards through the previous commit messages

`g j` will cycle forwards through commit messages

Scrolling through the commit history is a simple way to create consistent style of commit messages without having to look at previous commits separately.

Commit messages are remembered even after a reset (tested with soft reset)

Previous messages are only available once a commit is made. If a change is cancelled, `, k` before the commit then the message is not saved. Instead, select the message and yank, `y`, into the kill ring before killing the commit.


## Linking GitHub issues and Git commits
Including a reference to an issue, e.g. `GH-42` or `#42`, you can link a commit to a GitHub issue.

Include the phrase `Resolves #42` or `Closes #42` anywhere in the commit message to automatically close an issue when a commit is pushed to GitHub.

 Avoid using the `#42` short form at the start of the line in Magit. Lines starting with `#` are comments and not included in the commit message.
