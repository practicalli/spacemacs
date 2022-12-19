# Layouts

[Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#layouts-and-workspaces){.md-button}

Layouts enable you to switch between different projects.  Each layout keeps its own list of open buffers, making it quick to navigate to specific buffers.

++spc++ ++"l"++ shows a menu where you can select an existing layer or create a new layer. Type in the name of the layer to narrow to the existing layer name or create a new layer of that name.

++spc++ ++"l"++ ++tab++ switches to the previous active layout, providing a quick way to jump between two projects actively being worked on.

??? HINT "Limit ++spc++ ++tab++  to current layout"
    Set the `spacemacs-layouts-restrict-spc-tab` variable to true to limit ++spc++ ++tab++ to toggle between the last current and last buffer from the current layout.  The `spacemacs-layouts` layer is automatically included in Spacemacs, however, to specify variables it must be added to the `dotspacemacs-configuration-layers` in the Spacemacs configuration file
    ```emacs title="dotspacemacs-configuration-layers"
    (spacemacs-layouts :variables spacemacs-layouts-restrict-spc-tab t)  ; (1)!
    ```
    1.  [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} contains this configuration


## Layer Indicator

The layer name shows in the mode line.

![Spacemacs - Layouts - practicalli spacemacs layout](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-modeline-layouts.png)


## Layouts Transient State

++spc++ ++l++ opens the Layouts transient state, allowing you to create, delete and select layouts with a single character keybinding.

The transient state also lists all the current layouts.

![Spacemacs Layers - practicalli example layer list](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-layouts-transient-state-practicalli-layouts.png)

The most layouts common commands are:

| Keybindings                            | Action                                                              |
|----------------------------------------|---------------------------------------------------------------------|
| ++spc++ ++l++ ++l++                    | Create a new layout or switch to existing layout by typing its name |
| ++spc++ ++l++ ++d++                    | Delete current layout                                               |
| ++spc++ ++tab++ ++0++..++9++           | Select layout in position (creates layouts if none exists)          |
| ++spc++ ++"l"++ ++tab++                | Select previously displayed layout                                  |
| ++spc++ ++"l"++ ++"n"++ / ++n++        | Next / Previous layout                                              |
| ++spc++ ++"l"++ ++less++ / ++greater++ | Move layout left or right in the layout list                        |

++spc++ ++"l"++ ++question++ opens a helm menu for Helm transient state

![Spacemacs - Layouts - transient state menu with help - `SPC l ?` ](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-layouts-transient-state-menu.png)
