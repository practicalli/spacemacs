# Buffer management

Buffers manage the display of files and other information, e.g. REPL, terminal, etc. 

Opening a file replaces the content in the current buffer.

![Spacemacs - Buffer menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-menu-buffer-light.png?raw=true#only-light)
![Spacemacs - Buffer menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-menu-buffer-dark.png?raw=true#only-dark)


## Listing open buffers

++spc++ ++"b"++ ++"b"++ to select a buffer from a list of buffers

A helm pop-up window appears at the bottom listing all open buffers.  The helm popup window also shows recently opened buffers.

++enter++ to open the highlighted buffer.

++alt+"D"++ closes the currently selected buffer and remains in the buffer list.

![Spacemacs - Buffer menu - List Buffers](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffer-list-light.png?raw=true#only-light)
![Spacemacs - Buffer menu - List Buffers](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffer-list-dark.png?raw=true#only-dark)


## Buffer Transient State

++spc++ ++"b"++ ++period++ launches buffer transient state to manage buffers using single character keybindings.

++"n"++ and ++"N"++ to cycyle forward and backward through open buffers.

++"d"++ to close the current buffer.

![Spacemacs - Buffer Transient State](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffers-helm-transient-state-light.png?raw=true#only-light)
![Spacemacs - Buffer Transient State](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffers-helm-transient-state-dark.png?raw=true#only-dark)


## Close buffers using buffer menu

Use helm-mini menu when you have a large number of buffers to delete.

++spc++ ++"b"++ ++"b"++ to open the buffer helm-mini menu

++ctrl++ ++"j"++ and ++ctrl++ ++"k"++ to navigate buffer names in the list of open buffers

++ctrl++ ++spc++ to mark a buffer for deletion

++meta++ ++"D"++ deletes all marked buffers


### Commonly used keybindings

| Vim Normal                 | Description                       |
| ------------               | --------------------------------- |
| ++spc++ ++"b"++ ++period++ | Enter buffer transient state      |
| ++"b"++                    | list open buffers                 |
| ++"h"++                    | switch to home buffer             |
| ++"m"++                    | switch to home message            |
| ++"n"++                    | Show next buffer                  |
| ++"N"++ or ++"p"++         | Show previous buffer              |
| ++"q"++                    | Quit the buffer transient state   |

