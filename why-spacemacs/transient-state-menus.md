# Transient State menus

Transient-states allow similar commands to be run in succession without repeatedly pressing the <Leader> key.

Transient-states are usually triggered by using a keybinding with the following pattern: `<Leader> <group> .` where group is the category the transient-state falls under.

Spacemacs uses [hydra]() to set up temporary states with menus to allow you to do specific tasks.  Examples of transient state menus

* `SPC b .` - buffer management
* `SPC e .` - errors
* `SPC k .` - lisp state
* `SPC w .` - window management
* `SPC z f` - zoom frame size
* `SPC z x` - zoom text size
* `C-c C-f h h` - clj-refactor

When in a transient-state you will see documentation at the bottom of your window. To exit a transient-state press q.

[![Transient State - scaling text](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)
