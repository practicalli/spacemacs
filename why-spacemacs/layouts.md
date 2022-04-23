# Layouts

Layouts enable you to switch between different projects.  Each layout keeps its own list of open buffers, making it quick to navigate to specific buffers.

`SPC l l` shows a menu where you can select an existing layer or create a new layer. Type in the name of the layer to narrow to the existing layer name or create a new layer of that name.

`SPC l TAB` switches to the previous active layout, providing a quick way to jump between two projects actively being worked on.

> #### Hint::Limit `SPC TAB` to current layout
> Add `(spacemacs-layouts :variables spacemacs-layouts-restrict-spc-tab t)` to the `dotspacemacs-configuration-layers` in the Spacemacs configuration file to limit `SPC TAB` to toggle between buffers only from the current layout.  This configuration is part of practicalli/spacemacs.d


## Layer Indicator

The layer name shows in the mode line.

![Spacemacs - Layouts - practicalli spacemacs layout](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-modeline-layouts.png)


## Layouts Transient State

`SPC l` opens the Layouts transient state, allowing you to create, delete and select layouts with a single character keybinding.

The transient state also lists all the current layouts.

![Spacemacs Layers - example layer list](/images/spacemacs-layouts-transient-state-list.png)

The most layouts common commands are:

| Keybindings           | Action                                                              |
|-----------------------|---------------------------------------------------------------------|
| `SPC l l`             | Create a new layout or switch to existing layout by typing its name |
| `SPC l d`             | Delete current layout                                               |
| `SPC l 0..9`          | Select layout in position (creates layouts if none exists)          |
| `SPC l TAB`           | Select previously displayed layout                                  |
| `SPC l n` / `SPC l N` | Next / Previous layout                                              |
| `SPC l <` / `SPC l >` | Move layout left or right in the layout list                        |


![Spacemacs - Layouts - transient state menu with help - `SPC l ?` ](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-layouts-transient-state-menu.png)


## Spacemacs Layouts documentation

* [Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#layouts-and-workspaces)
