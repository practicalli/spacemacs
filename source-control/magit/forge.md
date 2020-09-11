# Magit Forge - issues, PRs and forking
Magit Forge is used to talk to GitHub, GitLab and similar services, collectively referred to as forges.

Forge can retrieve the list of issues and pull requests from a remote repository. Issues, pull requests and forks can be created on a remote repository.

`@` opens the forge menu from the Magit Status buffer, `, g s`, and therefore requires a local Git repository.

![Spacemace Magit Forge](/images/spacmacs-magit-forge-menu.png)

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


## Issues list
`@ l i` opens a buffer with a list of issues with the most recent at the top.  Issue labels also show in the list using the the color assigned on GitHub.

![Spacemacs Magit Forge Issues list with labels](/images/spacemacs-magit-forge-issues-status.png)

In the issue list buffer:

`o` opens the list in the default browser

`j` to navigate down, `k` to navigate up the list

`q` to quit and close the buffer

> #### Hint::Configure number of open and closed items shown
> Add  `(setq  forge-topic-list-limit '(100 . 0))` to the `dotspacemacs/user-config` section of `.spacemacs` to hide all closed issues and pull requests from the list, showing up to 100 open items from each.
>
> Or `(setq  forge-topic-list-limit '(100 . -10))` and use `SPC SPC forge-toggle-closed-visibility` to toggle showing 10 of the latest closed topics for issues and pull requests.
>
> [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration contains this setting.


## Create an issue
`@ c i` to create a new issue on the current repository.

![Spacemacs Magit Forge - create issue post](/images/spacemacs-magit-forge-create-issue-post.png)

The issue is added to the Issues section of Magit status.

![Spacemacs Magit Forge - Issue added to Issues in Magit Status](/images/spacemacs-magit-forge-issues-status-list.png)

`RET` on the issue opens the issue and shows the details.  Related issues are shown as a link, `RET` on the link opens the related issue in the browser.

`, ,` to save and create the issue on the remote forge.  `, k` to cancel.

![Spacemacs Magit Forge - Issue details](/images/spacemacs-magit-forge-issue-details.png)

> #### Hint::Markdown support
> Pull Request descriptions will use markdown when displayed in GitHub.
>
> ``code`` for code / key highlighting, `#` for headings, `----` for horizontal lines


## Edit a issue
`@ l i` to list the current issues (`@ f f` to update the topics if the issue is not listed)

In the issue list buffer, navigate (`j`, `k`) to the issue to be edited.

`RET` to open the issue in its own buffer

`j` / `k` to navigate to each section of the issue (title, assignee, label, mark, description, comments)

`C-c C-e` to edit the current section of the issue.

For title, assignee, label and mark a prompt shows in the mini-buffer.  Enter a value and press `RET`

For description and comments a separate buffer opens with editable text.

`, ,` or `C-c C-c` to save changes and push them to the remote repository. `C-c C-k` to cancel changes and return to the issue.

As soon as a value or text is saved, a request is sent to the remote forge to update the issue.

`q` to close the issue and issue list buffers.

This approach works for other topics types also.


## Create a remote fork
Create or select a local Git repository and run magit status, `, g s`.

`c f` to create a remote fork, prompt for the GitHub account or organisation to fork the repository too.

![Spacemacs Magit Forge create fork - fork to](/images/spacemacs-magit-forge-create-fork-to.png)

Prompt for the name of the new remote repository

![Spacemacs Magit Forge create fork - remote name](/images/spacemacs-magit-forge-create-fork-remote-name.png)

> #### Hint::Configure owned GitHub accounts and organisations
> Add  `(setq forge-owned-accounts '(("practicalli" "jr0cket" )))` to the `dotspacemacs/user-config` section of `.spacemacs` to define GitHub accounts and organisations that can be forked to.
>
> Add `(setq forge-owned-blacklist '(("bad-hacks" "really-bad-hacks")))` to define accounts and organisations not to include.  This over-rides the `forge-owned-accounts` setting.
>
> [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) repository contains these settings.


 GitHub user and organization accounts owned
 used by @ c f  to create a fork

 To blacklist specific accounts,
 over-riding forge-owned-accounts



## Create a pull request
Assumes you have a fork and original repository as remotes added to the local git repository.

Create a branch on the fork with a descriptive name of the change you want to submit as a pull request.  Commit changes to that new branch.

`P p` to push the change to the remote repository for the fork.

`@` to open the forge menu from the Magit Status buffer.

`r` to select the repository that the pull request will be created on (eg. the upstream repository, not the fork).

[Spacemacs Magit Forge - create pull request forge repository](/images/spacemacs-magit-forge-create-pull-request-forge-repository.png)

`c p` to create a new pull request.

For the source repository, select the branch of the local fork repository.

![Spacemacs Magit Forge - create pull request source branch](/images/spacemacs-magit-forge-create-pull-request-source-branch.png)

For the target repository, select the upstream repository

![Spacemacs Magit Forge - create pull request target branch](/images/spacemacs-magit-forge-create-pull-request-target-branch.png)

The description of the change is show and can be edited for the pull request description.

`, ,` to confirm the message and create the pull request on the upstream repository. `, k` to cancel the pull request.

![Spacemacs Magit Forge - create pull request text](/images/spacemacs-magit-forge-create-pull-request-text.png)
