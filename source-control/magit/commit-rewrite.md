# Reword a commit

`c w` from the Magit status buffer (`SPC g s`) allows you to rewrite the commit message.

Any staged changes are kept in staging and not added to the existing commit.


This new commit replaces the current HEAD commit.


> ####TODO::Add screenshot

## Force push a shared commit

If you already shared a commit that you want to extend, please ask those you work with if its okay (as it could interrupt their development).  For shared commits, its better practice to create a new commit and push that rather than rewrite history.

`P` opens the Push menu in Magit status buffer (`SPC g s`).

`-f` sets the force-with-lease option to rewrite the shared history in the remote repository

`p` pushes to the new commit to the remote repository and replaces the HEAD commit in that repository.
