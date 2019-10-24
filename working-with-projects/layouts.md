# Layouts and Workspaces

[Layouts](http://develop.spacemacs.org/doc/DOCUMENTATION.html#layouts-and-workspaces) provide an easy way to group buffers for a project or any arbitrary buffer grouping you wish.  Workspaces define window arrangements within a particular layout.

`SPC b b` shows only the buffers for the current layout, making it easy to switch between them.  `SPC b B` will show all buffers.

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
