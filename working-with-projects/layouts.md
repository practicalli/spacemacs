# Layouts and Workspaces

Create separate layouts to group buffers for projects or other tasks.  Each layout can be configured with its own window arrangements.  Layouts can be saved and loaded from a file and layouts are kept when restarting Spacemacs with `SPC q r`.


> ####Hint::Spacemacs Layouts documentation
> [Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#layouts-and-workspaces)


## Layouts keybindings

| Key Binding  | Description                                                |
|--------------|------------------------------------------------------------|
| `SPC l`      | activate the transient- state                              |
| `?`          | toggle the documentation                                   |
| `[0..9]`     | switch to nth layout                                       |
| `[C-0..C-9]` | switch to nth layout and keep the transient state active   |
| `TAB`        | switch to the latest layout                                |
| `a`          | add a buffer to the current layout                         |
| `A`          | add all the buffers from another layout in the current one |
| `b`          | select a buffer in the current layout                      |
| `d`          | delete the current layout and keep its buffers             |
| `D`          | delete the other layouts and keep their buffers            |
| `h`          | go to default layout                                       |
| `C-h`        | previous layout in list                                    |
| `l`          | select/create a layout with helm                           |
| `L`          | load layouts from file                                     |
| `C-l`        | next layout in list                                        |
| `n`          | next layout in list                                        |
| `N`          | previous layout in list                                    |
| `o`          | open a custom layout                                       |
| `p`          | previous layout in list                                    |
| `r`          | remove current buffer from layout                          |
| `R`          | rename current layout                                      |
| `s`          | save layouts                                               |
| `t`          | display a buffer without adding it to the current layout   |
| `w`          | workspaces transient state (needs eyebrowse layer enabled) |
| `x`          | kill current layout with its buffers                       |
| `X`          | kill other layouts with their buffers                      |

## Workspaces

Workspaces are sub-layouts, they allow to define multiple layouts into a given layout, those layouts share the same buffer as the parent layout.

The currently active workspace number is displayed before the window number, for instance "➊|➍" or "1|4" means the fourth window of the first workspace.

Any new layout comes with a default workspace which is the workspace 1.

Switching to a workspace that does not exist in the current layout will create a new one. For instance at startup you can press ~SPC l w 2~ to create the workspace 2 in the =default= layout.

When created a workspace is anonymous, you can give them a name with `SPC l w R`.

## Workspace key bindings

The key bindings are registered in a transient state. The docstring of the transient state displays the existing workspaces and the currently active workspace has square brackets. Pressing a workspace number will activate it (or create a new one) and exit the transient state. It is possible to just preview a workspace with `Ctrl-<number>`. Pressing `TAB` will activate the previously selected workspace.

Press `?` to toggle the full help.

| Key Binding       | Description                                                 |
|-------------------|-------------------------------------------------------------|
| `SPC l w`         | activate the transient state                                |
| `?`               | toggle the documentation                                    |
| `[0..9]`          | switch to nth workspace                                     |
| `[C-0..C-9]`      | switch to nth workspace and keep the transient state active |
| `TAB`             | switch to last active workspace                             |
| `d`               | close current workspace                                     |
| `n` or `l`        | switch to next workspace                                    |
| `N` or `p` or `h` | switch to previous workspace                                |
| `R`               | set a tag to the current workspace                          |
| `w`               | switched to tagged workspace                                |

There are also some handy globally available key bindings related to workspaces:

| Key Binding | Description                          |
|-------------|--------------------------------------|
| `gt`        | go to next workspace                 |
| `gT`        | go to previous workspace             |
| `SPC b W`   | go to workspace and window by buffer |
