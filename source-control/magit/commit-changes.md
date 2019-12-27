# Committing changes

`c` opens the commit menu in the Magit status buffer, allowing you to create new commits, [amend](commit-amend.md), [extend](commit-extend.md),  [reword](commit-reword.md).


![Spacemacs Magit - commit menu](/images/spacemacs-magit-commit-menu.png)

## Commit commands

The Magit commit menu can be used to create new commits at the HEAD of the commit history.

Changing a commit generates a new SHA identity, creating a commit in the history, replacing the current HEAD commit.

| Tool   | Magit | Description                                                        |
|--------|-------|--------------------------------------------------------------------|
| create | `c c` | creates a new commit and prompts for a commit message              |
| Amend  | `c a` | add staged changes to HEAD commit and commit message can be edited |
| Reword | `c w` | edit the commit message, ignore any staged changes                 |
| Extend | `c e` | add all staged files to the HEAD commit, no message editing        |
