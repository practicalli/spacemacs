# Clone remote repositories

Magit can clone repositories from GitHub and GitLab.

`SPC g c` (`magit-clone`) to clone a remote repository, specifying how the remote repository will be referenced

`u` to use the full URL, `git@github.com:practicalli/spacemacs.git` or the simpler name `practicalli/spacemacs`

A prompt is displays to define the path where the remote repository should be cloned too.

`C-left-arrow` and `C-right-arrow` to navigate the path without changing it.  `RET` to confirm the path.

<!-- {% youtube %} -->
<!-- https://www.youtube.com/embed/AdEOazt1rD0#t=3m50s?autoplay=1loop=1 -->
<!-- {% endyoutube %} -->

If the remote repository is not from your own GitHub account or an Organisation you are part of, a prompt asks if you wish to create a fork of the project.  `y` will create a fork in your GitHub/GitLab account

> Forks can only be created on a user account, there is no option to select an organisation in which to create a fork

The remote repository is cloned to the specified location.

`y` at the final prompt will set the remote repository as the default push destination (shown when using `P` from Magit Status).


> #### Hint::Create and Fork repositories
> [Magit forge](../forge/) can be used to create and fork repositories on GitHub and GitLab


## Update the remote name

The remote is added with the name `origin`, which is not particularly descriptive (and in a distributed world, not necessarily accurate)

Changing the remote to use a specific name, i.e. the account or org from which it was cloned, makes it easier to know where changes are located.

`M` in Magit Status shows the details of the remote repositories.

`r` to rename a selected remote, showing a list of available remotes. `C-j` and `C-k` to navigate the list of remotes


## Opening files

Whilst still in Magit Status buffer, Spacemacs knows you are in the project that has been cloned.

`SPC p f` will list all the files from the cloned repository, simplifying the navigation to the project.

If a file is not opened from the project, `q` to leave the Magit Status buffer will return to a buffer that is not in the current project, so use `SPC f f` and navigate to the location of the cloned repository.


## Pushing / Pulling changes

`P p` pushes local commits and is set to the fork if you created one after the clone, otherwise its the cloned repository

`F u` pulls remote commits from the cloned repository (upstream)

See [Pull Changes](pull-changes.md) and [Push Changes](push-changes.md) for more details.
