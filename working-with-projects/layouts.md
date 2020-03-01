# Layouts and Workspaces

[Layouts](http://develop.spacemacs.org/doc/DOCUMENTATION.html#layouts-and-workspaces) provide an easy way to group buffers for a project or any arbitrary buffer grouping you wish.  Workspaces define window arrangements within a particular layout.

## Working with buffers in a layout
`SPC b b` shows only the buffers for the current layout, making it easy to switch between them.  `SPC b B` will show all buffers.

`SPC TAB` will toggle between the previous buffer and current buffer.  Add `(spacemacs-layouts :variables spacemacs-layouts-restrict-spc-tab t)` to the `dotspacemacs-configuration-layers` in your `.spacemacs` file to enable.


## Managing Layouts

`SPC l` enters the layout transient state

![Spacemacs Layouts - transient state](/images/spacemacs-layouts-transient-state-list.png)

`SPC l l` lists the current layers with a helm prompt to narrow the list.  Entering a new name will prompt to create a new layout (perspective)

The current layout name appears on the far left of the mode-line.

![Spacemacs layers - practicalli spacemacs](/images/spacemacs-layers-name.png)

`SPC l s` saves the current layouts to a file, `SPC l L` to load layouts from a file.  Layouts are kept when restarting Spacemacs with `SPC q r` and can be configured to auto-resume when starting Emacs.

```elisp
dotspacemacs-auto-resume-layouts t
```

`SPC l x`  kill current layout with its buffers, `SPC l d` deletes the layer and keeps the buffers available

`SPC l ?` will show the help menu

![Spacemacs Layouts - transient state](/images/spacemacs-layouts-help.png)




## Global layout

`SPC b b` in the `default` layout shows all open buffers as this layout has global scope.

This layout is useful to check if there are unsaved files or for killing unwanted or temporary buffers.

`M-SPC` when helm popup is active opens the [helm transient state](/why-spacemacs/helm-transient-state.md).  `t` will mark (tag) an item in the list, `T` will mark all items.  `M-D` will kill all marked buffers.



## Workspaces

Workspaces define multiple window arrangements in a given layout. The active workspace number is placed before the window number, i.e ➊|➍, the fourth window of the first workspace. Any new layout comes with a default workspace, ➊|➊.  Switching to a workspace that does not exist in the current layout will create a new one.

`SPC l w R` gives a name to the current workspace.

Pressing a workspace number will activate it or create a new one. `Ctrl-<number>` will preview a workspace.

`TAB` makes the previous workspace activate.

`SPC l w ?` to toggle the full help.

![Spacemacs Layouts - Workspaces help](/images/spacemacs-layouts-workspaces-help.png)

There are also some handy globally available key bindings related to workspaces:

| Key Binding | Description                          |
|-------------|--------------------------------------|
| `gt`        | go to next workspace                 |
| `gT`        | go to previous workspace             |
| `SPC b W`   | go to workspace and window by buffer |



## References
* [spacemacs-layout layer on GitHub](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bspacemacs/spacemacs-layouts)
* [develop.spacemacs.org layer description](https://develop.spacemacs.org/layers/+spacemacs/spacemacs-layouts/README.html)
* [Spacemacs documentation](http://develop.spacemacs.org/doc/DOCUMENTATION.html#layouts-and-workspaces)
* [Eyebrowse GitHub repository](https://github.com/wasamasa/eyebrowse)
