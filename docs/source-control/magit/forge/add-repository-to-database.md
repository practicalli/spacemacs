# Add repository to Magit Forge database

Use Magit Forge commands from the Magit Status buffer, `SPC g s`.

Add each remote repository to the local forge database to manage topics (issues and pull request).

`@ f f` updates the Magit Forge database with all topics and available branches. Update the database before creating new issues or pull requests to ensure Magit Forge has the right information.

Magit Forge caches all topics in the a local database providing an efficient way to work with lists of issues and pull requests.


## Add a remote repository

Each repository used for issues or pull requests should be added as a remote, then a Magit Forge database can be added for that repository.

`SPC g s` to enter Magit Status

`M` to view the remote repositories currently added to the local git repository

`a` to add a new repository, specifying the alias name (`git --origin alias-name`)

## Add a database for a repository

Add each repository to the forge database before running other forge commands.

`@ a` to add a remote repository to the forge database, defaulting to the URL of the current remote repository for the project.

![Spacemacs Magit Forge - add repository to database](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-add-repository-to-database-light.png?raw=true#only-light)
![Spacemacs Magit Forge - add repository to database](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-add-repository-to-database-dark.png?raw=true#only-dark)

When prompted, confirm download all the issue and pull request information.

!!! INFO "Magit Forge actions required the repository in database"
    ![Spacemacs Magit - forge add repository](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-add-database-before-commands-light.png?raw=true#only-light)
    ![Spacemacs Magit - forge add repository](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-add-database-before-commands-dark.png?raw=true#only-dark)

??? HINT "List repositories in Magit Forge database"
    `@ l r` lists all the remote repositories that have been added to the Magit forge database. `RTN` on the repository name opens the Magit Status buffer for that repository.
    ![Spacemacs Magit Forge list repositories added to Magit Forge database](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-repository-list-light.png?raw=true#only-light)
    ![Spacemacs Magit Forge list repositories added to Magit Forge database](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-repository-list-dark.png?raw=true#only-dark)

??? HINT "Fork a remote adds the fork to the Magit Forge database"
    `@ c f` will create a fork of the current remote repository and automatically adds the new fork repository to the Magit forge database


## Changing remotes in Magit Forge

`@ r` switches between forks where multiple have been added to the forge database, e.g. a fork of an open source project that contributions are to be made via pull request.

Switch to the repository that you intend to work with before updating topics or creating a pull request.

![Spacemacs Magit Forge - select repositories for topics](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-configure-remote-light.png?raw=true#only-light)
![Spacemacs Magit Forge - select repositories for topics](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-configure-remote-dark.png?raw=true#only-dark)


## Fetching topics

`@ f f` will fetch issues and pull requests based on the `forge-topic-list-limit`.

The list of issues and pull requests will show in the Magit Status buffer.
