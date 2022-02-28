# Configure Source control layers

Recommended layers to add source control support:

* `git` - provides Magit, a feature rich git client that is easy to use
* `github` - access GitHub / GitLab APIs to access and create issues, pull requests, etc.
* `version-control` - general features including diff highlights in the window fringe

[Add an SSH key](ssh-remote-repositories.md) when using SSH URLs to connect to GitHub / GitLab.

Git should be [configured for Magit](git-configuration.md), Magit Forge [configured to access for issues and pull requests](forge-configuration.md) and optionally [github-clone configured](github-clone.md) to search GitHub for repositories by name.


## Add layers to .spacemacs configuration

`SPC f e d` opens the `.spacemacs` configuration file (`M-m f e d` Emacs state)

Use `SPC s s` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` to jump to the highlighted line, `C-j` to move down the matching lines, `C-k` to move up.

Add the following configuration to provide the recommended setup.

```lisp
     (git :variables
          git-magit-status-fullscreen t
          magit-diff-refine-hunk t
          git-enable-magit-todos-plugin t)

     github

     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```

The layers and variables are explained in their own sections below.


## git layer

`git` provides the Magit, a rich Git client that does everything a command line client can do.

`git-magit-status-fullscreen` opens  Magit status (`SPC g s`) in a full frame window, `q` restores previous window layout. Fullscreen is easier to read the diff of a commit will plenty of space to enter a commit messages.

`magit-diff-refine-hunk` configures diffs show the specific word changes when a hunk is active, making it easier to spot the exact changes.

`git-enable-magit-todos-plugin` lists matching TODO lines from the current project in the Magit Status buffer, helping work and issues be tracked

```lisp
     (git :variables
          git-magit-status-fullscreen t
          magit-diff-refine-hunk t
          git-enable-magit-todos-plugin t)
```

Ensure you follow the [Git Configuration steps](git-configuration.md) required for this layer.


## github layer

`github` provided [Magit forge for API access to remote repository services](forge-configuration.md), i.e. GitHub / GitLab.

`github-clone` is also provided, although there are security concerns when [configuring this service](github-clone.md).

Layer variables are not set for this layer

```lisp
     github
```

Ensure you follow the [GitHub Configuration steps](github-configuration.md) required for this layer.


## version-control layer

`version-control` layer highlights changes in the fringe of a buffer and a vcs transient state to quickly navigate through changes (hunks).

`version-control-diff-tool` uses diff-hl to highlight file change against local commits, with markers appearing in the fringe.

`version-control-global-margin` enables highlighting changes in all buffers automatically.

```lisp
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```


![Spacemacs Source Control - full screen and refine-hunks](/images/spacemacs-magit-fullscreen-refine-hunks-example.png)
