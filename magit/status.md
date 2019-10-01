# Git Status

`SPC g s` runs Magit status, showing the changes you have in the git project the current buffer belongs too.

* `s` to stage a change from the working directory - equivalent to `git add`
* `u` to unstage a change from staging (so its no longer included in the next commit)
* `TAB` toggles the expansion of changes in files/hunks
* `v` select specific lines of the change to stage / unstage
* `g r` refresh Magit status with any new changes.

[![Spacemacs Magit Status Exaple](/images/spacemacs-magit-status-example-full.png)](/images/spacemacs-magit-status-example-full.png)


## Using Magit status directly

If you run git status from a file that is not currently in a git project, magit will prompt you to create a git project, allowing you to select the root of the project directory

* confirm you want to create a git repository
* specify where to create the repository, the root directory for the git repository

{% youtube %}
https://www.youtube.com/embed/AdEOazt1rD0?autoplay=1loop=1
{% endyoutube %}
