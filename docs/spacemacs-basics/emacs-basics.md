# Emacs Basics

Understanding the basic terminology will help make the most out of Spacemacs and allow very effective use.

![Emacs Terminology - Structure of Emacs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/concepts/spacemacs-emacs-structure-terminology.png?raw=true)

| Terminology   | Description                                                                                                                                   |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| File          | A file on the file system                                                                                                                     |
| Buffer        | A container to display a file or other information (file navigation, REPL, data inspector, test report, etc.)                                 |
| Window        | Contains a buffer, organises multiple buffers in a frame                                                                                      |
| Frame         | Holds one or more windows. Opening another frame gives you another instance of Emacs                                                          |
| Status bar    | Information about current window and buffer, e.g. window number, buffer mode & name, location of cursor. Also referred to as the mode line.   |
| Mini-buffer   | A command line for Emacs - shows commands and some results, acts as an interactive prompt for some commands                                   |

Spacemacs also adds [Layouts to manage a set of buffers within the scope of a project and Workspaces allow multiple window configurations](working-with-projects/layouts.md)


## Working with Frames

By default, Spacemacs opens with a frame that contains a single window, that window containing the Spacemacs home buffer.

++spc++ ++f++ ++"n"++ creates a new frame containing a single window that contains a buffer.

++spc++ ++f++ ++"d"++ closes the current frame, unless its the last Emacs frame running, then Emacs itself closes.

++spc++ ++"q"++ ++"q"++ to quit Emacs closes all frames.


## Working with windows

Each frame contains one or more windows. Each window is assigned a unique number when created, even across multiple frames.

++spc++ followed by a number jumps to the window with that number, e.g. ++spc++ ++1++ jumps to window number 1.

Windows are used to display multiple buffers (files, REPL, error messages, etc) within the same frame

| Key Binding                  | Description                                             |
| ---------------------------- | ------------------------------------------------------- |
| ++spc++ ++"w"++ ++period++   | Open Window transient state menu for multiple command   |
| ++spc++ ++"w"++ ++2++        | 2 window layout - shows current buffer in new window    |
| ++spc++ ++"w"++ ++3++        | 3 window layout - shows current buffer in new windows   |
| ++spc++ ++"w"++ ++"m"++      | maximise the current buffer                             |
| ++spc++ ++"w"++ ++"d"++      | delete current window                                   |
| ++spc++ ++"w"++ ++"g"++      | toggles golden ratio view of windows                    |


## Working with windows

A buffer is the fundamental presentation of information in Emacs.  Buffers can show the contents of a file, search results in a helm-popup, an interactive process e.g. REPL buffer, etc.

++spc++ ++tab++ toggles between the current buffer and the last active buffer

| Key Binding                  | Description                                                                                |
| ---------------------------- | ------------------------------------------------------------------------------------------ |
| ++spc++ ++"b"++ ++period++   | Open buffer transient state menu for multiple command                                      |
| ++spc++ ++"b"++ ++"b"++      | Show list of open buffers and recently opened buffers                                      |
| ++spc++ ++"b"++ ++"d"++      | Kill current buffer                                                                        |
| ++spc++ ++"b"++ ++"h"++      | Open Spacemacs Home buffer                                                                 |
| ++spc++ ++"b"++ ++"m"++      | Open Spacemacs `*messages*` buffer - log of Emacs actions and commands                     |
| ++spc++ ++"b"++ ++"s"++      | Open Spacemacs scratch buffer - a persistent buffer for random note taking                 |
| ++spc++ ++"b"++ ++"w"++      | Toggle read-only mode on a buffer (Spacemacs Org docs open in Read-only mode by default)   |
| ++spc++ ++"b"++ ++"x"++      | Kill buffer and the window containing it                                                   |
| ++spc++ ++"b"++ ++"R"++      | Revert buffer to file saved on disk (causes .dir-locals.el to load into Emacs)             |
| ++spc++ ++"b"++ ++"Y"++      | Copy contents of a whole buffer                                                            |


## Golden Ratio

[Golden-ratio](https://github.com/roman/golden-ratio.el){target=_blank} automatically lays out windows in a Fibonacci style pattern.  The active window becomes the largest window and all other windows are automatically shrunk so they are out of the way, but still visible.

![Spacemacs - Golden Ratio in action](https://camo.githubusercontent.com/3334502dca6363a9d5552cad3ce6b58602e1270c8d26b049e1f67436f819d23d/68747470733a2f2f7261772e6769746875622e636f6d2f726f6d616e2f676f6c64656e2d726174696f2e656c2f6173736574732f676f6c64656e5f726174696f5f656c2e676966)
