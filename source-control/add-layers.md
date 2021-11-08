# Source control layers

`git` provides the Magit, a rich Git client that can do everything a Git command line client can do.  Magit is configured to open full screen, to make it easier to read diff's of change and have plenty of space for commit messages.  Diffs are configured to show the specific changes on each line (refine-hunk).  Ensure you follow the [Git Configuration steps](git-configuration.html) required for this layer.

`github` provided access to remote repositories created on GitHub, enabling search and cloning of those repositories.  This layer also gives full access to GitHub Gists.  Ensure you follow the [GitHub Configuration steps](github-configuration.html) required for this layer.


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

`SPC g s` opens Magit Git client in full screen window layout (`q` restores previous window layout)

`magit-diff-refine-hunk` shows word-granularity differences in the current diff hunk, making it easier to spot the exact changes

`git-enable-magit-todos-plugin` lists matching TODO lines in the project in the Magit Status buffer, helping work and issues be tracked


![Spacemacs Source Control - full screen and refine-hunks](/images/spacemacs-magit-fullscreen-refine-hunks-example.png)
