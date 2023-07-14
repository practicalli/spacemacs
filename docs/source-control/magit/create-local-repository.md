# Create a local Git repository

`SPC g i` creates a local git repository, prompting for root directory in which to create it.

![Spacemacs Magit - create local repository](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-init.png)

Once magit created the git repository it automatically opens `magit-status`.

![Spacemacs Magit - status](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-status.png)


## Using Magit Status to create a local repository

`SPC g s` on a project that has no git version control will prompt you for a directory that contains a git repository.  If you select a directory without a `.git` repository, a prompt in the mini-buffer will ask if a git repository should be created.

If [`magit-repository-directories` is configured in `.spacemacs`](https://practicalli.github.io/spacemacs/source-control/magit/list-local-repositories.html), then only a list of existing repositories are listed.  Type `.` to initialize a new git repository in the current project.  Magit will prompt you in the mini-buffer to confirm you wish to create this git repository.

`SPC g i` is the recommended approach to initialize a new git repository once `magit-repository-directories` is set.

![Spacemacs Magit: git status list of existing repositories](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-git-status-helm-list-of-repositories.png)
