# Magit Forge - issues, PRs and forking

Magit Forge connects to the GitHub & GitLab via their open APIs, collectively referred to as forges.

Topics (the collective name for issues and pull requests) from a repository can be created, edited, commented upon and assigned to people.

Magic Forge uses the APIs of these forges to manage issue and pull requests, collectively referred to as topics.

`@ a` to add a repository from the current project to a local database, to cache a list of topics (issues and pull requests) from a remote repository.

Issues, pull requests and forks can be created on a remote repository, once the repository has been added to the local dictionary.

`@` opens the forge menu from the Magit Status buffer, `, g s`, and therefore requires a local Git repository.

![Spacemacs Magit Forge](/images/spacmacs-magit-forge-menu.png)

> #### Hint::Requires Forge Configuration
> [Create an encrypted `.authinfo.gpg` file for connection details of each forge used](/source-control/forge-configuration.md) before using the Magit Forge commands.
