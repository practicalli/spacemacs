# Highlight Version Control Changes

There are several ways to highlight changes in the files working copy against git commits in Spacemacs.

Git fringe is a subtle indicator of changes.

Highlighting with Smeargle is a very distinct visualisation of change history, highlighting changes over time.


# Git Fringe

`SPC T d` toggles version control fringe


> #### Hint:: Configure fringe in Git layer
> The git layer can be configured to show version changes in the fringe
> Can use either git or version-control layers to add a fringe
```elisp
   dotspacemacs-configuration-layers
   '(
     (git :variables
          git-gutter-use-fringe t)

     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
    )

```
> Check the git layer and my .spacemacs file for configuration options
> TODO: choose one or the other approach


# `SPC g H` Highlighting with Smeargle
[Smeargle](https://github.com/syohex/emacs-smeargle) is a package that provides highlighting regions by last updated time. Older changes have a opaque white background and newer regions have a darker background.  This is supposed to help you just focus on newer changes, as older changes are subtly faded into the background.

![Smeargle example](https://github.com/syohex/emacs-smeargle/blob/master/image/smeargle.png)



### Smeargle Transient State

https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/version-control#smerge-mode-transient-state
