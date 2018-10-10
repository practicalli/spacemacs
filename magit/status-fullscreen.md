# Magit Status Fullscreen

Magit status in fullscreen mode provides lots of space to work with changes.  Leaving Magit status, `q`, returns you to the window layout from which you came.

Fullscreen is configured by adding the `git-magit-status-fullscreen` variable to the `git` layer.

If you are using the [Enhance Clojure experience](install-spacemacs/enhance-clojure-experience.md) then this is already configured.


> ####Note:: Configure fullscreen for Magit Status
> Open the `.spacemacs` file via `SPC f e d`  (`M-m f e d` Emacs state)
>
> Use `/` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` confirms the search text and `n` jumps to the next occurance, `N` jumps to the previous occurrence.
>
```lisp
   dotspacemacs-configuration-layers
   '(
     (git :variables
          git-magit-status-fullscreen t
          git-enable-github-support t
          git-gutter-use-fringe t)
    )
```

------------------------------------------

> #### Hint:: Reload the configuration or Restart Spacemacs
> For the changes to take effect, either reload the `~/.spacemacs` configuration using `SPC f e R` or restart Spacemacs `SPC q r`.
