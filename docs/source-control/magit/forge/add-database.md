# Add remote repositories to Magit Forge

Magit Forge caches information about a remote repository in a local database as a cache of all issues and pull request information.

Each repository that will be used for issues or pull requests should be added as a remote, then a Magit Forge database can be added for that repository.

Update the database before creating new issues or pull requests to ensure Magit Forge has the right information.  Otherwise using forge commands before adding the repository will cause an error

![Spacemacs Magit - forge add repository](/images/spacemacs-magit-forge-require-forge-add-repository.png)


## Add a remote repository

`SPC g s` to enter Magit Status

`M` to add or check the upstream repository is added as a remote repository


## Add a database for a repository

Add each repository to the forge database before running other forge commands.

> The `@ c f` create fork command will automatically add the new repository to the forge.

`a` to add a remote repository to the forge database, defaulting to the URL of the current remote repository for the project.

![Spacemacs Magit Forge - add repository to database](/images/spacemacs-magit-forge-add-repository-name.png)

When prompted, select to download all the issue and pull request information.


## Changing remotes in Magit Forge

`r` switches between forks where multiple have been added to the forge database.  Switch to the repository that you intend to work with.

![Spacemacs Magit Forge - repositories select](/images/spacemacs-magit-forge-repository-selection.png)


## Fetching topics

`@ f f` will fetch issues and pull requests based on the `forge-topic-list-limit`.

The list of issues and pull requests will show in the Magit Status buffer.
