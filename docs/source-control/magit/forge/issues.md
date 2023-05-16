# Forge Issue management

Issues can be viewed, created and updated, providing full synchronisation between Emacs and the remote GitHub / GitLab service.

## View issues list

++"@"++ ++"l"++ ++"i"++ opens a buffer with a list of issues with the most recent at the top.  Issue labels also show in the list using the the color assigned on GitHub.

![Spacemacs Magit Forge Issues list with labels](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-list-light.png?raw=true#only-light)
![Spacemacs Magit Forge Issues list with labels](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-list-dark.png?raw=true#only-dark)

In the issue list buffer:

++"o"++  opens the list in the default browser

++"j"++  to navigate down, ++"k"++  to navigate up the list

++"q"++  to quit and close the buffer

??? HINT "Configure number of open and closed items shown"
    `(setq  forge-topic-list-limit '(100 . 0))` added to the `dotspacemacs/user-config` section of `.spacemacs` hides all closed issues and pull requests from the list, showing up to 100 open items from each.

    `(setq  forge-topic-list-limit '(100 . -10))` and use `SPC SPC forge-toggle-closed-visibility` to toggle showing 10 of the latest closed topics for issues and pull requests.

    [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) configuration contains this setting.

## Create an issue

++"@"++ ++"c"++ ++"i"++ to create a new issue on the current repository.

A new buffer is displayed to write the issue details (issue post).

![Spacemacs Magit Forge - create issue post](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-create-post-light.png?raw=true#only-light)
![Spacemacs Magit Forge - create issue post](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-create-post-dark.png?raw=true#only-dark)

++comma++ ++comma++ or ++"Z"++ ++"Z"++ to create the issue and push it to the remote repository.

++comma++ ++"k"++ or ++"Z"++ ++"Q"++ to cancel the issue.

A newly created issue is added to the top of the Issues list in the Magit status buffer.

## View Issue

`RET` on the issue opens the issue and shows the details.

![Magit Forge issue view](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-view-dark.png?raw=true)

Related issues are shown as a link, `RET` on the link opens the related issue in the browser.


!!! HINT "Markdown support"
    Pull Request descriptions will use markdown when displayed in GitHub.

    tripple backtic ``` for code / key highlighting, `#` for headings, `---` for horizontal lines, `- [ ]` for list item

    ![Spacemacs Magit Forge Topic Issue description with Clojure code block example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-view-markdown-light.png?raw=true#only-light)
    ![Spacemacs Magit Forge Topic Issue description with Clojure code block example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-issue-view-markdown-dark.png?raw=true#only-dark)


## Update an issue

++"@"++ ++"l"++ ++"i"++ to list the current issues (++"@"++ ++"f"++ ++"f"++  to update the topics if the issue is not listed)

In the issue list buffer, navigate (++"j"++, ++"k"++) to the issue to be edited.

++enter++ to open the issue in its own buffer

++"j"++, ++"k"++` to navigate to each section of the issue (title, assignee, label, mark, description, comments)

 ++comma++ ++"e"++ or `C-c C-e` to edit the current section of the issue.

For title, assignee, label and mark a prompt shows in the mini-buffer.  Enter a value and press `RET`

For description and comments a separate buffer opens with editable text.

++comma++ ++comma++ or ++"Z"++ ++"Z"++  to save changes and push them to the remote repository. ++comma++ ++"k"++ or ++"Z"++ ++"Q"++  to cancel changes and return to the issue.

As soon as a value or text is saved, a request is sent to the remote forge to update the issue.

++"q"++ to close the issue and issue list buffers.

This approach works for other topics types also, e.g. pull requests.
