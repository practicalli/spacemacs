# Spacemacs Basics 

> TODO: Expand following content into sections

## Working with Buffers

To work with files in Emacs, they are first loaded into a **Buffer**.

So when you open a file with `M-x find file` or `SPC f f` a new buffer is created so you can manage that file.

Buffers are displayed in a window and you can change the window to show any of the current buffers.

Here are the most commonly used buffer commands

| Keybinding | Command                        | Description                               |
|------------|--------------------------------|-------------------------------------------|
| `SPC b b`  | helm-mini                      | List current buffers                      |
| `SPC b d`  | kill-this-buffer               | Kill current buffer                       |
| `SPC b h`  | home                           | Switch to Spacemacs home page             |
| `SPC b n`  | next-buffer                    | Switch to next buffer                     |
| `SPC b p`  | previous-buffer                | Switch to previous buffer                 |
| `SPC b s`  | switch-to-scratch-buffer       | Switch to the **scratch** buffer          |
| `SPC b Y`  | copy-whole-buffer-to-clipboard | Copy current buffer contents to kill ring |
  
See the full buffer menu via `SPC b`

![Spacemacs Buffer Menu](/images/spacemacs-buffer-menu.png)


## Managing Files

| Spacemacs | Emacs     | Evil    | Command                    |
|-----------|-----------|---------|----------------------------|
| `SPC f R` | `M-m f R` | `, f R` | rename-current-buffer-file |


Also consider using:

* dird
* neotree
* projectile


## Editing text (especially in Evil mode)

See Vim section 

## Working with Windows

| Keybinding   | Command | Description                       |
|--------------|---------|-----------------------------------|
| `C-x 1`      |         | Close current window              |
| `C-x 2`      |         | Vertically split current window   |
| `C-x 3`      |         | Horizontally split current window |
| `SPC number` |         | Jump to window number             |


> You can also create layouts that are a collection of windows
