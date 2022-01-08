# Magit Forge - issues, PRs and forking
Magit Forge is used to talk to GitHub, GitLab and similar services, collectively referred to as forges.

Forge can retrieve the list of issues and pull requests from a remote repository. Issues, pull requests and forks can be created on a remote repository.

`@` opens the forge menu from the Magit Status buffer, `, g s`, and therefore requires a local Git repository.

![Spacemacs Magit Forge](/images/spacmacs-magit-forge-menu.png)

> #### Hint::Requires Forge Configuration
> [Configure forge with your remote repository](/source-control/forge-configuration.md) before using the forge commands.


## Using Magit Forge
Add each repository to the forge database before running other forge commands.  The create fork command will automatically add the new repository to the forge.

`a` to add a remote repository to the forge database, defaulting to the URL of the current remote repository for the project.

![Spacemacs Magit Forge - add repository to database](/images/spacemacs-magit-forge-add-repository-name.png)

`r` switches between forks where multiple have been added to the forge database.

![Spacemacs Magit Forge - repositories select](/images/spacemacs-magit-forge-repository-selection.png)

Using forge commands before adding the repository will cause an error

![Spacemacs Magit - forge add repository](/images/spacemacs-magit-forge-require-forge-add-repository.png)


## Fetching topics (issues and pull request lists)
`f f` will fetch issues and pull requests based on the `forge-topic-list-limit`.

The list of issues and pull requests will show in the Magit Status buffer.
