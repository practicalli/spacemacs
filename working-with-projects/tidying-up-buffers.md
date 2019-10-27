# Tidying up buffers

Sometimes you want to close several buffers and not just the current buffer with `SPC b d`.

`SPC b b` displays a list of open buffers in a popup window.

`M-SPC` opens the Helm transient menu on the buffer popup window, allowing you to navigate using `j` and `k` keys.

`M-D` will prompt you to kill the buffer the cursor is currently on.

`t` will mark the buffer the cursor is currently on.

`T` will mark all buffers listed in the popup.

`M-D` will prompt you in turn to delete all the marked buffers.


## Actions

There are a range of actions you can run from the Helm transient state or even when you just have the buffer list popup open.

`a` switches to the actions page

`C-z` displays the list of all the available actions for a buffer.

[![Spacemacs Buffers - Helm Actions](/images/spacemacs-buffers-helm-actions.png)](/images/spacemacs-buffers-helm-actions.png)


> #### Hint::
> `M-SPC` to open Helm transient state menu, simplifying the keybindings for tidying up lots of buffers.
[![Spacemacs - Helm Transient State menu](/images/spacemacs-helm-transient-state-menu.png)](/images/spacemacs-helm-transient-state-menu.png)
>
> `M-SPC` is used by the Gnome desktop for the window menu, so recommend you change the Gnome keyboard settings to use a different binding, i.e. `Super w`.
