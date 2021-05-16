# Magit Status

`SPC g s` runs Magit status, showing the status of the local git repository and any attached remote repositories.  Magit status is a full Git client and can run any Git commands.

`?` shows all the command menus available for committing

`g r` to refresh Magit status buffer

![Spacemacs Magit help menu](/images/spacemacs-magit-help-menu.png)


## Navigating Magit Status buffer

`j` and `k` to move to next / previous line

`[` and `]` jumps to next / previous section at the current level

`TAB` to expand a section

[![Spacemacs Magit Status Exaple](/images/spacemacs-magit-status-example-full.png)](/images/spacemacs-magit-status-example-full.png)


## Using Magit status directly

If you run git status from a file that is not currently in a git project, magit will prompt you to create a git project, allowing you to select the root of the project directory

* confirm you want to create a git repository
* specify where to create the repository, the root directory for the git repository

{% youtube %}
https://www.youtube.com/embed/AdEOazt1rD0?autoplay=1loop=1
{% endyoutube %}


> #### Hint::Create new project with magit-repository-directories configured
> If `magit-repository-directories` is configured with directories, then a helm pop-up menu will list the Git repositories within those directories rather than prompting to create a new repository. Type `.` as the selection to create a new repository with the current project.


## Magit Dispatch
`SPC g m` calls `magit-dispatch` which opens a transient menu with all the Magit commands found in Magit Status buffer.  Git commands can be run without the need of the Magit status buffer.

![Spacemacs Magit help menu](/images/spacemacs-magit-help-menu.png)
