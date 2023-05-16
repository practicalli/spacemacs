# Forge Pull Requests

Create a pull request on GitHub or GitLab within the comfort of Spacemacs, using all the usual editor tools to write pull request descriptions.

Magit Forge will use a Pull Request template if one is added to the repository.


## Create a pull request

Assumes you have a fork and original repository as remotes added to the local git repository.

Create a branch on the fork with a descriptive name of the change you want to submit as a pull request.  Commit changes to that new branch.

++"P"++ ++"p"++ to push the change to the remote repository for the fork.

++"@"++ to open the forge menu from the Magit Status buffer.

++"r"++ to select the repository that the pull request will be created on (eg. the upstream repository, not the fork).

![Spacemacs Magit Forge - create pull request forge repository](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-configure-remote-light.png?raw=true#only-light)
![Spacemacs Magit Forge - create pull request forge repository](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-configure-remote-dark.png?raw=true#only-dark)

++"@"++ ++"c"++ ++"p"++`c p` to create a new pull request.

Select the source repository, the branch that contains the changes for the pull request.

![Spacemacs Magit Forge - create pull request source branch](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-source-branch-dark.png?raw=true#only-dark)
![Spacemacs Magit Forge - create pull request source branch](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-source-branch-light.png?raw=true#only-light)

Select the target repository, the remote repository branch that changes will be pulled into (if the PR is merged).

![Spacemacs Magit Forge - create pull request target branch](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-target-branch-light.png?raw=true#only-light)
![Spacemacs Magit Forge - create pull request target branch](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-target-branch-dark.png?raw=true#only-dark)

The pull request post opens in a new buffer, using the pull request template if defined for the repository


![Spacemacs Magit Forge - create pull request post](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-post-light.png?raw=true#only-light)
![Spacemacs Magit Forge - create pull request post](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-pull-request-post-dark.png?raw=true#only-dark)

++comma++ ++comma++ or ++"Z"++ ++"Z"++ to confirm the message and create the pull request on the upstream repository.

++comma++ ++"k"++ or ++"Z"++ ++"Q"++ to cancel the pull request.

## Create a draft pull request

A pull request can be marked as a draft when created by Magit Forge, to communicate that the PR is not ready for review or approval.

With the pull request buffer opened, add yaml style front matter to the to define the PR as a draft.

```yaml
---
draft: true
---
```

`, d` when viewing the pull request will toggle the draft status of the pull request.
