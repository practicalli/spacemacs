# Editor states - Evil or Holy

When installing Spacemacs you have the choice of editor styles

| Editing style                                         | Description                                                                                |
|-------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Among the stars aboard the Evil flagship (Vim)        | Vim multi-model editing (normal, insert, visual, lisp, etc. `C-z` for classic Emacs editor |
| On the planet Emacs in the Holy control tower (Emacs) | Emacs only editing (No Vim states)                                                         |


![Spacemacs states](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/concepts/spacemacs-states-vim-emacs.png)


## Evil flagship states

If you have never used Vim before, having all these states may be confusing.  Each state has a specific purpose, eg. normal mode is about manipulating existing text where insert state is about adding more text.

Using a state for different types of editing actions greatly simplifies the keyboard bindings and arguably makes editing faster, especially once you get used to multi-state editing.

This speed is in part due to simpler keybinding when in normal mode as you are not typing content into the editor, simply running commands with each key press.  This means you can have single characters to do many of the common commands, eg `l` instead of `C-f` for moving the cursor forward.

If you are deeply connected to the with Emacs keybindings, then probably best to stick to holy mode.

If you are new to Emacs or you just want to take advantage of Vim, then select Evil mode.

> ####Hint::Evil flagship - toggling between Emacs
> You can toggle between any of the Vim states and the Emacs state with `C-z`.  This only works if you selected the Evil flagship editing style.

<hr />

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

> ####Hint::Spacemacs state documentation
> States and other concepts are explained further in the [Spacemacs concepts](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#editing-styles) documentation.
