# Highlight Version Control Changes

There are several ways to highlight changes in the files working copy against git commits in Spacemacs.

Git fringe indicates the difference between the working copy and the last commit.  As you add code or refactor, the lines that you change are marked in the right hand fringe.  Added lines are marked green, deleted lines are marked red.

[Smeargle](https://github.com/syohex/emacs-smeargle) highlights change history over time and incrementally fades unchange lines to grey based on the time they last were changed.  The concept is that lines changes most recently are the most relevant to the work you are doing.  Lines that have not changed in a long time are less likely to be worked on.


## Git Fringe

`SPC T d` toggles git fringe marks to indicate changes between working copy and latest commit.  Default is off.

Add the following to your `.spacemacs` to configure fringe in Git layer to display by default.


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


> TODO: choose approach
> Can use either git or version-control layers to add a fringe


## Highlighting with Smeargle

`SPC g H` toggle smeargle overlays showing historic changes based on time, with the oldest unchanged lines greyed out the most.  Default is off.

[Smeargle](https://github.com/syohex/emacs-smeargle) is a package that provides highlighting regions by last updated time. Older changes have a opaque white background and newer regions have a darker background.  This is supposed to help you just focus on newer changes, as older changes are subtly faded into the background.

![Smeargle example](https://github.com/syohex/emacs-smeargle/blob/master/image/smeargle.png?raw=true)


### Smeargle Transient State

`SPC g r` enters Smeargle transient state

![Spacemacs - Versioning - Smeargle transient state menu](/images/spacemacs-versioning-smeargle-transient-state-menu.png)

TODO: describe the benefit of this transient state.

https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/version-control#smerge-mode-transient-state
