# Magit Forge - issues, PRs and forking

Magit Forge connects to the GitHub & GitLab, collectively referred to as forges.  Magic Forge uses the APIs of these forges to manage issue and pull requests.

Forge can retrieve the list of issues and pull requests from a remote repository.

Issues, pull requests and forks can be created on a remote repository, once the repository has been added to the local dictionary.

`@` opens the forge menu from the Magit Status buffer, `, g s`, and therefore requires a local Git repository.

![Spacemacs Magit Forge](/images/spacmacs-magit-forge-menu.png)

> #### Hint::Requires Forge Configuration
> [Configure forge with your remote repository](/source-control/forge-configuration.md) before using the forge commands.
