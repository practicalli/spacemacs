# Transient State menus

Transient state menus make it simple to run commands multiple times, using a single key press, from a specific sub-set of commands.

For example, Font Scaling transient state menu allows you to repeatedly increase the size of the buffer font just by using the `+` key.  The Font Scaling transient state menu contains the sub-set of commands related to scaling, so you can decrease the font size just with the `-` key and reset the font with `0`.

[![Transient State - scaling text](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)

Transient-states are usually triggered by using a keybinding with the following pattern: `<Leader> <group> .` where group is the category the transient-state falls under.

When in a transient-state you will see documentation at the bottom of your window. To exit a transient-state press q.

## Examples of transient state menus

| Keybindings   | Transient state description  |
|---------------|------------------------------|
| `SPC b .`   | buffer management            |
| `SPC e .`   | errors                       |
| `SPC k .`   | lisp state                   |
| `SPC w .`   | window management            |
| `SPC z .`   | code folding                 |
| `SPC z f`   | zoom frame size              |
| `SPC z x`   | Font Scaling (x for text)    |
| `SPC n +/-` | Change the value of a number |
