# Cherry Picking commits

The main use of cherry picking it to copy one or more commits from one branch and apply them to another branch.

Cherry Picking is a way to be specific about which commits from a branch are incorporated into another branch.  Where as merging a branch into another would take the full commit history.

Cherry picking may also be used as part of a pull request process, rather than merging the pull request directly, avoiding any unintentional commits that may be part of that pull request.


## Cherries - comparing two branches

`Y` to select cherries

Select the **Cherry head** - the branch containing commits (cherries) that are to be copied

Select the **Cherry head** - the branch that would receive the commits (cherries)

A list of commits, 'cherries', are show to help narrow down which commits could be cherry picked.

![Spacemacs Magit Cherry Picking - list of cherries](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-cherry-picking-cherries.png)

> `A` with the point on one of the cherries, or with one or more cherries selected, will start the Applying of commits


## Applying commits

`A` starts the apply menu to start the cherry picking process.  `A` is also used to open the transient Apply menu, to continue skip or abort the cherry picking.

![Spacemacs Magit cherry picking - Apply menu and options](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-cherry-picking-apply-menu.png)

`d` to donate the selected cherry commits to another branch

Select the **donate branch** - the branch commits are to be copied to

If there are no conflicts, the commits are added to the branch.  Push the changes, `P p`, to a remote repository if relevant.


## Managing Conflicts

The Magit status buffer shows a cherry-picking progress section if the selected cherries (commits) cannot be automatically merged into the branch,

Files that contain merge conflicts will be listed under unstaged changes

![Spacemacs Magit cherry picking merge conflict - cherry picking progress](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-cherry-picking-merge-conflict-show-progress-unmerged-files.png)

`RET` to open file for editing in a buffer and resolve the conflicting change

`SPC f s` to save the file

`SPC g s` to return to the Magit status buffer

`s` on the file to stage any unstaged changes after editing the conflicting files

`A` to open the Apply action menu, `A` to continue with the apply of cherries

![Spacemacs Magit cherry picking - Apply actions menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-cherry-picking-actions-menu.png)

Staged changes require committing, so continuing the Apply will open a commit message buffer

`, ,` to confirm the commit

The cherry commits will be automatically committed, unless there is a conflict in another commit. Repeat the above steps until there are no further conflicts and all the commits are merged.

> `A s` to skip over a commit that is proving to be overly challenging to resolve its conflicts

> `A a` to abort and roll back to the state before cherry picking started, loosing all conflict edits


### Diff 3 configuration

Diff 3 presentation of merge conflicts displays a common parent (if one exists) between the two changes in conflict.

![Spacemacs Magit unstaged change with diff3 configuration showing parent of conflicting changes](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-magit-diff3-merge-parent-example.png)

> [Git configuration](/source-control/git-configuration.md) details how to add diff3 merge support along with many other useful settings.


## Errors and Aborts

`$` opens the Magit command log, showing commands run and errors that may have occured, such as if commits are not applied or the Apply process aborts.
