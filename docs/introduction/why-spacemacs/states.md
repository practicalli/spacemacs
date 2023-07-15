# Editor states - Evil or Holy

Multi-modal editing simplifies keybindings for everything, keeping your hands centered on the keyboard and increasing your productivity.  Multi-modal approach minimizing the need for  key chords that are slower and a common source of repetitive strain e.g. `C-c C-x M-j`

When installing Spacemacs you have the choice of editor styles

| Editing style                                         | Description                                                                                |
|-------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Among the stars aboard the Evil flagship (Vim)        | Vim multi-model editing (normal, insert, visual, lisp, etc. `C-z` for classic Emacs editor |
| On the planet Emacs in the Holy control tower (Emacs) | Emacs only editing (No Vim states)                                                         |

![Spacemacs states](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/concepts/spacemacs-states-evil.png?raw=true){loading=lazy}

Evil provide Vim style editing across all languages and modes in Emacs, simplifying the editing of files and keyboard shortcuts (keybindings)

Vim is a language for manipulating text files that goes far beyond editing files.  Learning this simple language removes cognitive load.  Speak vim and your fingers efficiently make the changes you want.


## Evil states

Multi-modal editing can take some adjustment and time to become comfortable. `Normal`, `Insert` and `Visual` states are the first ones to get used to.

Each state has a specific purpose, eg. normal mode is about manipulating existing text where insert state is about adding more text.

Using a state for different types of editing actions greatly simplifies the keyboard bindings and arguably makes editing faster, especially once you get used to multi-state editing.

This speed is in part due to simpler keybinding when in normal mode as you are not typing content into the editor, simply running commands with each key press.  This means you can have single characters to do many of the common commands, eg `l` instead of `C-f` for moving the cursor forward.

If you are deeply connected to the with Emacs keybindings, then probably best to stick to holy mode.

If you are new to Emacs or you just want to take advantage of Vim, then select Evil mode.

!!! HINT "Evil flagship - toggling between Emacs"
    `C-z` toggles between Vim states and the Emacs state when Evil Flagship editing states are used.


Here is the list of all the possible states, some of which are automatically applied (eg. magit git client is automatically evilified).

| State          | Default Color | Description                                                                          |
|----------------|---------------|--------------------------------------------------------------------------------------|
| `normal`       | orange        | Vim `normal` - used to execute and combine commands                                  |
| `insert`       | green         | Vim `insert` - used to actually insert text                                          |
| `visual`       | gray          | Vim `visual` mode of Vim=, used to make text selection                               |
| `motion`       | purple        | Evil - used to navigate read only buffers                                            |
| `emacs`        | blue          | This state is like using a regular Emacs without Vim                                 |
| `replace`      | chocolate     | Evil - overwrites the character under point instead of inserting a new one           |
| `hybrid`       | blue          | Spacemacs - use Emacs state instead of the Vim insert                                |
| `evilified`    | light brown   | Spacemacs - an `emacs` state modified to bring Vim navigation, selection and search. |
| `lisp`         | pink          | Spacemacs - structural editing for Lisp code (and Clojure)                           |
| `iedit`        | red           | Spacemacs - navigate between multiple regions of text                                |
| `iedit-insert` | red           | Spacemacs - replace multiple regions of text                                         |

!!! INFO "Spacemacs state documentation"
    States and other concepts are explained further in the [Spacemacs concepts](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#editing-styles){target=_blank} documentation.


## Transient State menus

Transient state menus are used to run commands multiple times using a single key press from a specific sub-set of commands.

For example, Font Scaling transient state menu allows you to repeatedly increase the size of the buffer font just by using the `+` key.  The Font Scaling transient state menu contains the sub-set of commands related to scaling, so you can decrease the font size just with the `-` key and reset the font with `0`.

![Transient State - scaling text](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-transient-state-scale-font-light.png?raw=true#only-light)
![Transient State - scaling text](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-transient-state-scale-font-dark.png?raw=true#only-dark)

Transient-states are usually triggered by using a keybinding with the following pattern: `<Leader> <group> .` where group is the category the transient-state falls under.

When in a transient-state you will see documentation at the bottom of your window. To exit a transient-state press q.

### Example menus

| Keybindings                            | Transient state description           |
| -------------------------------------- | ------------------------------------- |
| ++spc++ ++"b"++ ++period++             | buffer management                     |
| ++spc++ ++"e"++ ++period++             | errors                                |
| ++spc++ ++"k"++ ++period++             | lisp state for structured editing     |
| ++spc++ ++"w"++ ++period++             | window management                     |
| ++spc++ ++"z"++ ++period++             | code folding                          |
| ++spc++ ++"z"++ ++"f"++                | zoom frame size                       |
| ++spc++ ++"z"++ ++"x"++                | Font Scaling (x for text)             |
| ++spc++ ++"n"++ ++plus++ / ++minus++   | Change the value of a number          |

