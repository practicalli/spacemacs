# Create a local Git repository

`SPC g i` creates a local git repository and you are prompted for root directory in which to create it.

![Spacemacs Magit - create local repository](/images/spacemacs-magit-init.png)

Once magit created the git repository it automatically opens `magit-status`.

![Spacemacs Magit - status](/images/spacemacs-magit-status.png)


## Using Magit Status to create a local repository

`SPC g s` on a project that has no git version control will prompt you for a git repository.  Enter `.` to initialise a new git repository in the current project.  Magit will prompt you in the mini-buffer to confirm you wish to create this git repository.

`SPC g i` should be used to initialize a new git repository once `magit-repository-directories` is set.


![Spacemacs Magit: git status list of existing repositories](/images/spacemacs-magit-git-status-helm-list-of-repositories.png)
