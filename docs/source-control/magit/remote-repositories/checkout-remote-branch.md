# Magit checkout remote branches

Git works with local branches.  Local branches can be pushed to a shared repository (GitHub, GitLab, Bitbucket, etc.).

When checking out a remote branch, Magit will create a local tracking branch which is automatic checked out.  Changes can then be committed to this local tracking branch. Push the local tracking branch to the remote repository to share the new commits.


## Checkout local tracking branch for a remote branch

`SPC g s` calls `magit-status` and opens the Magit Git Status buffer

`b` opens the branch menu in the magit status buffer

`l` creates a local tracking branch with the unqualified name of the remote branch

e.g. if the remote branch is called `practicalli/cli-alias-updates` then the local tracking branch is called `cli-alias-updates`

Magit Status buffer should now show the local branch, e.g. `cli-alaiases-updates`, as the **Head** reference.


## Using Magit command line

`! !` opens a Git command line in the Magit status buffer

![Spacemacs Magit command line](/images/spacemacs-magit-subcommand.png)

Run the Git `checkout` command using the `--track` option to create a local branch with the same name as the remote branch.

```shell
git checkout --track practicalli/cli-alias-updates
```

Magit Status buffer should now show the local branch as the **Head** reference.
