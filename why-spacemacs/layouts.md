# Layouts

Layouts enable you to switch between different projects.  Each layout keeps its own list of open buffers, making it quick to navigate to specific buffers.

`SPC l TAB` switches to the previous layout, providing a quick way to jump between two projects actively being worked on.

`SPC l l` shows a menu where you can select an existing layer or create a new layer. Type in the name of the layer to narrow to the existing layer name or  use the name to create a new layer.  The layer name shows in the mode line.

![Spacemacs - Layouts - practicalli spacemacs layout](/images/spacemacs-layouts-example-practicalli-spacemacs.png)


> #### Hint::Limit `SPC TAB` to current layout
> Add `(spacemacs-layouts :variables spacemacs-layouts-restrict-spc-tab t)` to the `dotspacemacs-configuration-layers` in the `.spacemacs` file to limit `SPC TAB` to buffers of the current layer.


## Layouts Transient State
`SPC l` opens the Layouts transient state, allowing you to create, delete and select layouts with a single character keybinding.

The transient state also lists all the current layers.

![Spacemacs Layers - example layer list](/images/spacemacs-layouts-transient-state-list.png)

The most layer common commands are:

| Keybindings           | Action                                                     |
|-----------------------|------------------------------------------------------------|
| `SPC l l`             | Create a new layout                                        |
| `SPC l d`             | Delete current layout                                      |
| `SPC l 0..9`          | Select layout in position (creates layouts if none exists) |
| `SPC l TAB`           | Select previously displayed layout                         |
| `SPC l n` / `SPC l N` | Next / Previous layout                                     |
| `SPC l <` / `SPC l >` | Move layout left or right in the layout list               |


![Spacemacs - Layouts - transient state menu - `SPC l` ](/images/spacemacs-layouts-transient-state-menu.png)


> ####Hint::Spacemacs Layouts documentation
> [Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#layouts-and-workspaces)
