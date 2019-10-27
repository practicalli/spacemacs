# Buffer management

Buffers manage the display of files and other information. Opening a file replaces the content in the current buffer.

[![Spacemacs Buffer menu](../images/spacemacs-buffer-menu.png)](../images/spacemacs-buffer-menu.png)

## Listing open buffers

Use `SPC b b` to select an open buffer that is not currently displayed.  A helm pop-up window appears at the bottom listing all open buffers.  The helm popup window also shows recently opened buffers.

![Spacemacs - Buffer menu - List Buffers - Helm Mini buffer](/images/spacemacs-buffer-menu-list-buffers-helm-mini.png)

Using the buffer menu, `SPC b b` you can switch to any buffer currently open, especially useful for those buffers that are not currently being shown in a window.

You can also delete any of the currently open buffers when you no longer need them.



## Buffer Transient State

If you want to manage multiple buffers then the buffer transient state is ideal, entered using `SPC b .`

With a single key you can cycle quickly through all open buffers, forward with `n` or backwards with either `N` or `p`.

Use `k` to kill the current buffer.

![Spacemacs - Buffer Tranisent State](../images/spacemacs-buffer-transient-state.png)


| Vim Normal | Description                     |
|------------|---------------------------------|
| `SPC b .`  | Enter buffer transient state    |
| `n`        | Show next buffer                |
| `N` or `p` | Show previous buffer            |
| `q`        | Quit the buffer transient state |



## Kill buffers using buffer menu

The buffer transient state is the simplest way to delete buffers, however if there are a large number of buffers you wish to delete then using the buffer helm-mini menu has its advantages.

Open the buffer helm-mini menu with `SPC b b`.

Navigate to any buffer names you want to delete by moving the cursor with `C-j` and `C-k`.

Mark a buffer for deletion using `C-SPC`

Once you have marked all the buffers, use `M-D` to delete the marked buffers.
