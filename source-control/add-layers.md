# Add source control layers

`SPC f e d` opens the `.spacemacs` configuration file (`M-m f e d` Emacs state)

Use `/` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` confirms the search text and `n` jumps to the next occurance, `N` jumps to the previous occurrence.

Add the following configuration to provide the recommended setup.

```lisp
     (git :variables
          git-magit-status-fullscreen t)
     github
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```

![Spacemacs Source Control - add layers](/images/spacemacs-source-control-add-layers.png)
