# Magit Status Fullscreen

Magit status in fullscreen mode provides lots of space to work with changes, look at logs and compare diffs.

| Keybinding | Description                                                                   |
|------------|-------------------------------------------------------------------------------|
| `q`        | returns to previous window layout, keeping the Magit status buffer available. |
| `SPC u q`  | kills the magit status buffer and returns to previous layout                  |


> ####Hint::Already configured in Enhanced Clojure experience
Magit fullscreen is already configured if you followed the [Enhance Clojure experience](install-spacemacs/enhance-clojure-experience.md).


## Configure fullscreen for Magit Status

Add the `git-magit-status-fullscreen t` variable to the `git` layer in `.spacemacs` to enable Magit fullscreen.

Open the `.spacemacs` file via `SPC f e d`  (`M-m f e d` Emacs state)

Use `/` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` confirms the search text and `n` jumps to the next occurance, `N` jumps to the previous occurrence.

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
