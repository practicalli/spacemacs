# Buffer management

Buffers manage the display of files and other information. Opening a file replaces the content in the current buffer.

[![Spacemacs Buffer menu](../images/spacemacs-buffer-menu.png)](/images/spacemacs-buffer-menu.png)

## Listing open buffers

`SPC b b` to select a buffer from a list of buffers

A helm pop-up window appears at the bottom listing all open buffers.  The helm popup window also shows recently opened buffers.

![Spacemacs - Buffer menu - List Buffers - Helm Mini buffer](/images/spacemacs-buffer-menu-list-buffers-helm-mini.png)

Using the buffer menu, `SPC b b` you can switch to any buffer currently open, especially useful for those buffers that are not currently being shown in a window.

You can also delete any of the currently open buffers when you no longer need them.


## Buffer Transient State

`SPC b .` launches buffer transient state to manage buffers using single character keybindings.

With a single key you can cycle quickly through all open buffers, forward with `n` or backwards with either `N` or `p`.

Use `k` to kill the current buffer.

![Spacemacs - Buffer Transient State](/images/spacemacs-buffers-transient-state-menu.png)


### Commonly used keybindings

| Vim Normal | Description                     |
|------------|---------------------------------|
| `SPC b .`  | Enter buffer transient state    |
| `b`        | list open buffers               |
| `h`        | switch to home buffer           |
| `m`        | switch to home message          |
| `n`        | Show next buffer                |
| `N` or `p` | Show previous buffer            |
| `q`        | Quit the buffer transient state |


## Kill buffers using buffer menu
Use helm-mini menu when you have a large number of buffers to delete.

`SPC b b` to open the buffer helm-mini menu

`C-j` and `C-k` to navigate buffer names in the list of open buffers

`C-SPC` to mark a buffer for deletion

`M-D` deletes all the marked buffers.
