# Cleaning up Magit sessions

Leaving Magit status buffers using the `q` key will persist the Magit status session until you close it with `SPC u q` or quit / restart Spacemacs.

If you have multiple Magit status sessions open, you can use Helm to back close them.


| Keybinding | Description                                                                   |
|------------|-------------------------------------------------------------------------------|
| `q`        | returns to previous window layout, keeping the Magit status buffer available. |
| `SPC u q`  | kills the magit status buffer and returns to previous layout                  |



## Closing multiple Magit buffers with Helm

Use the Helm transient state menu to bulk delete them.

* `SPC b b` to open all buffers.
* Type `magit` in the helm prompt to show just the magit buffers
* `M-SPC` opens the Helm Transient state
* `T` marks all buffers
* `M-D` deletes all marked buffers (and closes the Helm transient state)
