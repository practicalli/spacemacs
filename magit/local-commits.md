# Local commits

> #### TODO::work in progress, sorry

`c` opens the commit menu in the Magit status buffer, allowing you to create new commits, amend and squash existing commits.

![Spacemacs Magit - commit menu](/images/spacemacs-magit-commit-menu.png)

## Create a commit

`c` in the commit menu opens a commit message buffer showing all the changes in the currently staged files.

Type in a suitable commit message

![Spacemacs Magit - message buffer](/images/spacemacs-magit-commit-message-buffer.png)

`, ,` to create the commit or `, k` to cancel the commit

![Spacemacs Magit - commit or cancel](/images/spacemacs-magit-commit-message-menu.png)


> #### Hint::GitHub Issues and commits
> Including a reference to an issue, e.g. `GH-42` or `#42`, you can link a commit to a GitHub issue.
>
> Include the phrase `Resolves #42` or `Closes #42` anywhere in the commit message to automatically close an issue when a commit is pushed to GitHub.
>
> Avoid using the `#42` short form at the start of the line in Magit, as it will treated as a comment line and not included in the commit message.



## Amend a commit

`a` in the commit menu allows you to change the commit message and include any additional changes staged.

Stage any additional changes before entering the commit menu.

> #### Hint::Avoid amending shared commits
> Amending a commit will change the commit reference number (the SHA hash code) as this is based in part on the time of commit as well as the contents.
>
> Use the `-f` force flag to push an amended commit to a shared repository (e.g. GitHub or GitLab).
> `P -f p` to force push to the remote repository.
