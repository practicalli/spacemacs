# Layouts and Workspaces

[:globe_with_meridians: Layouts](http://develop.spacemacs.org/doc/DOCUMENTATION.html#layouts-and-workspaces){target=_blank} provide a way to group buffers for a project or any arbitrary buffer grouping you wish.  

Workspaces define window arrangements within a particular layout.


## Working with buffers in a layout

++spc++ ++"b"++ ++"b"++ lists buffers for the current layout, quickly switching between them.  

++spc++ ++"b"++ ++"B"++ will show all buffers.

++spc++ ++tab++ toggles between the previous buffer and current buffer, regardless of layout the previous buffer is in.  

Constrain last buffer toggle to the curren layout by adding a configuration to the `dotspacemacs-configuration-layers` Spacemacs user configuration 

```lisp 
(spacemacs-layouts :variables 
                   spacemacs-layouts-restrict-spc-tab t)
```


## Managing Layouts

++spc++ ++"l"++ ++tab++ toggles to the previous layout, providing a quick way to jump between two projects actively being worked on.

++spc++ ++"l"++ enters the layout transient state

![Spacemacs Layouts - transient state](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-transient-state-light.png?raw=true#only-light)
![Spacemacs Layouts - transient state](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-transient-state-dark.png?raw=true#only-dark)

++spc++ ++"l"++ ++"l"++ lists the current layouts with a helm prompt to narrow the list.  Entering a new name will prompt to create a new layout (perspective)

The current layout name appears on the far left of the mode-line.

![Spacemacs layers - practicalli spacemacs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-modeline-light.png?raw=true#only-light)
![Spacemacs layers - practicalli spacemacs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-modeline-dark.png?raw=true#only-dark)

++spc++ ++"l"++ ++"s"++ saves all layouts to a file

++spc++ ++"l"++ ++"L"++ loads a layout from a file.  Layouts are kept when restarting Spacemacs with 

++spc++ ++"q"++ ++"r"++ and can be configured to auto-resume when starting Emacs.

```elisp
dotspacemacs-auto-resume-layouts t
```

++spc++ ++"l"++ ++"x"++ close current layout and its buffers 

++spc++ ++"l"++ ++"d"++ deletes the layout and keeps the buffers available

++spc++ ++"l"++ ++question-mark++ shows the layouts help menu

![Spacemacs Layouts - transient state](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-transient-state-layouts-light.png?raw=true#only-light)
![Spacemacs Layouts - transient state](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-transient-state-layouts-dark.png?raw=true#only-dark)


## Global layout

++spc++ ++"b"++ ++"b"++ in the `default` layout shows all open buffers as this layout has global scope.

This layout is useful to check if there are unsaved files or for closing unwanted or temporary buffers.

++meta+spc++ in helm popup opens [helm transient state](/spacemacs/introduction/why-spacemacs/helm/#helm-transient-state).  ++"t"++ will mark (tag) an item in the list, ++"T"++ will mark all items.  ++meta+"D"++ will close all marked buffers.


## Workspaces

Workspaces define multiple window arrangements in a given layout.

The active workspace number is placed before the window number, i.e ➊|➍, the fourth window of the first workspace. A new layout comes with a default workspace, ➊|➊.  Switching to a workspace that does not exist in the current layout will create a new one.

++spc++ ++"l"++ ++"w"++ ++"R"++ gives a name to the current workspace.

Pressing a workspace number will activate it or create a new one. `Ctrl-<number>` will preview a workspace.

++tab++ makes the previous workspace activate.

++spc++ ++"l"++ ++"w"++ ++question-mark++ to toggle the full help.

| Key Binding             | Description                            |
| -------------           | -------------------------------------- |
| ++"g"++ ++"t"++         | go to next workspace                   |
| ++"g"++ ++"T"++         | go to previous workspace               |
| ++spc++ ++"b"++ ++"W"++ | go to workspace and window by buffer   |


## References

[:globe_with_meridians: spacemacs-layout layer on GitHub](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Bspacemacs/spacemacs-layouts){target=_blank .md-button}

[:globe_with_meridians: develop.spacemacs.org layer description](https://develop.spacemacs.org/layers/+spacemacs/spacemacs-layouts/README.html){target=_blank .md-button}

[:globe_with_meridians: Spacemacs documentation](http://develop.spacemacs.org/doc/DOCUMENTATION.html#layouts-and-workspaces){target=_blank .md-button}

[:globe_with_meridians: Eyebrowse GitHub repository](https://github.com/wasamasa/eyebrowse){target=_blank .md-button}

