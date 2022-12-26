# Forge Issue management

Issues can be viewed, created and updated, providing full synchronisation between Emacs and the remote GitHub / GitLab service.

## View issues list
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
> [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) configuration contains this setting.


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


## Update an issue

`@ l i` to list the current issues (`@ f f` to update the topics if the issue is not listed)

In the issue list buffer, navigate (`j`, `k`) to the issue to be edited.

`RET` to open the issue in its own buffer

`j` / `k` to navigate to each section of the issue (title, assignee, label, mark, description, comments)

`,e ` or `C-c C-e` to edit the current section of the issue.

For title, assignee, label and mark a prompt shows in the mini-buffer.  Enter a value and press `RET`

For description and comments a separate buffer opens with editable text.

`, ,` or `C-c C-c` to save changes and push them to the remote repository. `C-c C-k` to cancel changes and return to the issue.

As soon as a value or text is saved, a request is sent to the remote forge to update the issue.

`q` to close the issue and issue list buffers.

This approach works for other topics types also.
