# Highlight Version Control Changes

Fringe markers show the difference between the working copy and the last commit.  As you add code or refactor, the lines that you change are marked in the fringe.

`SPC T d` toggles git fringe marks to indicate changes between working copy and latest commit.  Default is off.

![Spacemacs - Magit - Fringe markers](/images/spacemacs-magit-fringe-markers.png)

To display fringe marks by default, add the following to the `dotspacemacs-configuration-layers` in your `.spacemacs` file

```elisp
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```

See [version control layer configuration](https://develop.spacemacs.org/layers/+source-control/version-control/README.html#configuration)  for other options.

## Highlighting with Smeargle

`SPC g H` toggle smeargle overlays showing historic changes based on time, with the oldest unchanged lines greyed out the most.  Default is off.

[Smeargle](https://github.com/syohex/emacs-smeargle) is a package that provides highlighting regions by last updated time. Older changes have a opaque white background and newer regions have a darker background.  This is supposed to help you just focus on newer changes, as older changes are subtly faded into the background.

![Smeargle example](https://github.com/syohex/emacs-smeargle/blob/master/image/smeargle.png?raw=true)


### Smeargle Transient State

`SPC g r` enters Smeargle transient state

![Spacemacs - Versioning - Smeargle transient state menu](/images/spacemacs-versioning-smeargle-transient-state-menu.png)

TODO: describe the benefit of this transient state.

https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/version-control#smerge-mode-transient-state
