# Changing History

The need to change history in Git should be minimal and should limited to fixing errors made in previous commits on your local repository.

Here are a few simple tools to help you change your local history.

> If you need to change history on a share repository, then think again, then think about how many people your history re-writing exercise is going to affect, then think about it again!  If you really must change a shared git history, get consent from the people you will affect.

> Its much simpler to commit a new change that fixes the error and let others pull that in, or not make that mistake in the first place.


## Amend commit 

Really useful if you missed a change in the last commit, especially if that commit was recent.  This creates a new commit with both the currently staged changes and the change in the previous commit.

> The previous commit is no longer available through the normal git tools (although its still there as an object in your `.git` directory).



## Squash commits 

> Also see interactive rebasing

## Fixing up 
