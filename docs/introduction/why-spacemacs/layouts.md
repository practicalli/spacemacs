# Layouts

Layouts are used to manage projects separately. Each layout keeps its own list of open buffers, making it quick to navigate to specific buffers.

++spc++ ++"l"++ opens the layout menu

++spc++ ++"l"++ ++"l"++ to list all layouts, typing to narrow down to a match. ++enter++ to open the layout.  Type a new layer name to create a new layer.

++spc++ ++"l"++ ++"s"++ to save the layouts to file (layouts should be saved automatically when restarting of exiting Emacs).

++spc++ ++"l"++ ++tab++ switches to the previous layout, providing a quick way to jump between two projects. 

??? HINT "Limit ++spc++ ++tab++  to current layout"
    Set the `spacemacs-layouts-restrict-spc-tab` variable to true to limit ++spc++ ++tab++ to toggle between the last current and last buffer from the current layout.  The `spacemacs-layouts` layer is automatically included in Spacemacs, however, to specify variables it must be added to the `dotspacemacs-configuration-layers` in the Spacemacs configuration file
    ```emacs title="dotspacemacs-configuration-layers"
    (spacemacs-layouts :variables spacemacs-layouts-restrict-spc-tab t)  ; (1)!
    ```
    1.  [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} contains this configuration


## Layer Indicator

The layer name shows in the mode line.

![Spacemacs - Layouts - practicalli spacemacs layout](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-modeline-light.png?raw=true#only-light)
![Spacemacs - Layouts - practicalli spacemacs layout](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-modeline-dark.png?raw=true#only-dark)


## Layouts Transient State

++spc++ ++"l"++ ++question++ opens the layouts transient state to manage layouts with a single character keybinding. The transient state also lists all the current layouts.

![Spacemacs Layers - practicalli example layer list](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-transient-state-light.png?raw=true#only-light)
![Spacemacs Layers - practicalli example layer list](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-layouts-transient-state-dark.png?raw=true#only-dark)

The most layouts common commands are:

| Keybindings                            | Action                                                              |
|----------------------------------------|---------------------------------------------------------------------|
| ++spc++ ++l++ ++l++                    | Create a new layout or switch to existing layout by typing its name |
| ++spc++ ++l++ ++d++                    | Delete current layout                                               |
| ++spc++ ++tab++ ++0++..++9++           | Select layout in position (creates layouts if none exists)          |
| ++spc++ ++"l"++ ++tab++                | Select previously displayed layout                                  |
| ++spc++ ++"l"++ ++"n"++ / ++n++        | Next / Previous layout                                              |
| ++spc++ ++"l"++ ++less++ / ++greater++ | Move layout left or right in the layout list                        |


## Reference

[:fontawesome-brands-github: Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#layouts-and-workspaces){.md-button}
