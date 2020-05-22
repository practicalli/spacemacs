# Magit Forge
Forge can retrieve the list of issues and pull requests from a remote repository.

Remote repositories, issue and pull requests can be created on a remote repository.

`, g s @` opens the forge menu (requires a local Git repository).

![Spacemace Magit Forge](/images/spacmacs-magit-forge-menu.png)

> #### Hint::Requires Forge Configuration
> [Configure forge with your remote repository](/source-control/forge-configuration.md) before using the forge commands.

## Create a remote fork
Create or select a local Git repository and run magit status, `, g s`.

`@` opens the forge menu

`c f` to create a remote fork, prompt fork repository to create fork to

![Spacemacs Magit Forge create fork - fork to](/images/spacemacs-magit-forge-create-fork-to.png)

Prompt for remote name

![Spacemacs Magit Forge create fork - remote name](/images/spacemacs-magit-forge-create-fork-remote-name.png)

> #### TODO::TODO:Test creation of a remote
