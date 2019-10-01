# Layouts

Layouts enable you to switch between different projects.  Each layout keeps its own list of open buffers, making it quick to navigate to specific buffers.

`SPC l l` shows a menu where you can create a new layer, typing the name for the layer.  The new layer name shows in the left corner of the Spacemacs power bar.

![Spacemacs - Layouts - practicalli spacemacs layout](/images/spacemacs-layouts-example-practicalli-spacemacs.png)


## Layouts Transient State

`SPC l` opens the Layouts transient state, allowing you to create, delete and select layouts with a single character keybinding.

The transient state also lists all the current layers.

![Spacemacs Layers - example layer list](/images/spacemacs-layouts-transient-state-list.png)



The most layer common commands are:

| Keybindings | Action                                                     |
|-------------|------------------------------------------------------------|
| `l`         | Create a new layout                                        |
| `d`         | Delete current layout                                      |
| `0..9`      | Select layout in position (creates layouts if none exists) |
| `TAB`       | Select previously displayed layout                         |
| `n` / `N`   | Next / Previous layout                                     |
| `<` / `>`   | Move layout left or right in the layout list               |


![Spacemacs - Layouts - transient state menu - `SPC l` ](/images/spacemacs-layouts-transient-state-menu.png)


> ####Hint::Spacemacs Layouts documentation
> [Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#layouts-and-workspaces)
