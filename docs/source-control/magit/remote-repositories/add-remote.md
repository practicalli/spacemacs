# Add remote repository to local repository

Open Magit status using `SPC g s`.

`M` opens the Remotes menu, showing a popup list of actions

![Spacemacs Magit - Remotes menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-remotes-menu.png)

`a` prompts for the remote name, e.g. origin or the name of the GitHub/GitLab account or organisation

Followed by a prompt for the URL of the repository, e.g. a github / gitlab address.

The final prompt asks to set this new remote as the default, saying yes adds this to the `P` push menu.


## Update remote

`C` to configure a remote, a prompt lists the existing remotes by their name

`C-j` / `C-k` to navigate the list of remote names, `RET` to select the remote to configure

The current configuration of the remote is displayed

![Spacemacs Magit Remote Configuration menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-git-magit-remote-configure-menu.png)

`u` to change the URL used for the remote (i.e. if the remote has been renamed or a different remote is required)

`U` to change the branch and references to fetch (refspec)

`s` to set the url used for fetching from the remote, bound to the

`S` refspec used when pushing to the remote

`O` set to --tags and all tags are fetched or `--no-tags` then no tags are fetched

* [Magit Manual: Remote Git Variables](https://magit.vc/manual/magit/Remote-Git-Variables.html)
