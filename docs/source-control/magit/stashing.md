# Stashing changes

++"z"++ opens the Stash menu, allowing you to keep changes in your working directory or staging index without having to commit them.  Stashing your local changes allows you to change to a different branch or pull commits from a remote repository.

![Spacemacs Magit - stashing menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-stash-menu.png)

++"z"++ to stash all the changes in your local working directory and staged changes (index).

++"i"++ stashes only changes that are staged, ++"w"++ stashes only the working directory

++minus++ ++"u"++ will also include the untracked files in the stash

Mini-buffer shows a prompt for the name of the stash.  A meaningful name for the stash allows understanding the purpose of the stash and make it simpler to use multiple stashes


## Restore stage

With the cursor on a stash in the Magit Status buffer:

++"a"++ to apply the changes in a stash to the working directory, keeping the changes in the stash

++"p"++ to pop the change, applying the changes to the working directory and removing the stash

++"x"++ to delete the stash

If the cursor is not on a stash, the mini-buffer prompts for the stash name.
