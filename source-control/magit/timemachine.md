# Git Timemachine

Easily navigate backwards and forwards throught the commit history of a file under Git Version Control. The buffer shows the file as it was in each change you select.

> #### Hint:: Positioning the buffer content
> Timemachine seems to work best when you have all the text visible in a buffer or you roughly know where the changes are in the file as you move between commits.

## Using Timemachine

`SPC g t` opens the Git Timemachine transient state.

[![Spacemacs Git Timemachine Menu](/images/spacemacs-git-timemachine-menu.png)](/images/spacemacs-git-timemachine-menu.png)

Use the following keys to navigate through all the commits for the current file

| Keybinding | Description                                     |
|------------|-------------------------------------------------|
| `c`        | Show the most recent commit for the file        |
| `g`        | Go to nth commit                                |
| `p`        | Show previous commit                            |
| `n`        | Show next commit                                |
| `t`        | Go to revision by selected commit message       |
| `w`        | Copy the abbreviated hash of the current commit |
| `W`        | Copy the full hash of the current commit        |
| `q`        | Exit Timemachine transient state                |


> #### INFO:: Magit blame
> According to the git-timemachine website, `b` runs `magit-blame` on the currently visited revision.  This keybinding is not part of the git layer in Spacemacs.
> As the minibuffer already shows author information, it seems redundant to add this option.

## Customise Timemachine

`SPC SPC customize [git-timemachine]`.

[![Spacemacs Git Timemachine - Customize](/images/spacemacs-git-timemachine-customize.png)](/images/spacemacs-git-timemachine-customize.png)
