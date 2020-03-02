# Emacs Basics - Frames Buffers Windows

Understanding the basic terminology will help you make the most out of Spacemacs and allow very efficient use.

| Terminology | Description                                                                                                                                 |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| File        | A file on the file system                                                                                                                   |
| Buffer      | A container to display a file or other information                                                                                          |
| Window      | Contains a buffer, allowing you to organise multiple buffers in a frame                                                                     |
| Frame       | Holds one or more windows. Opening another frame gives you another instance of Emacs                                                        |
| Status bar  | Information about current window and buffer, e.g. window number, buffer mode & name, location of cursor. Also referred to as the mode line. |
| Mini-buffer | A command line for Emacs - shows commands and some results, acts as an interactive prompt for some commands                                 |

![Emacs Terminology - Structure of Emacs](/images/emacs-terminology-structure.png)


## Working with Frames

When you open Emacs for the first time you are presented with a frame that contains a single window.

If you run Emacs again, or if you make a new frame `SPC F n`, then a second frame will appear containing a single window.

If you kill a frame, only that frame closes unless its the last Emacs frame running, then Emacs itself closes.

If you quit Emacs, then all frames are closed.


## Working with windows

There can be one or more windows in Emacs.  Windows are used to split up the Emacs frame into sections.  This allows you to display multiple buffers (files, REPL, error messages, etc) at the same time.

Each window has a number enabling you to jump between windows, e.g. `SPC 1` takes you to window number 1.

Some of the common windows functions include:

| keybinding | action                                                |
|------------|-------------------------------------------------------|
| `SPC w`    | Opens Window menu                                     |
| `SPC w .`  | Open Window transient state menu for multiple command |
| `SPC w 2`  | 2 window layout - shows current buffer in new window  |
| `SPC w 3`  | 3 window layout - shows current buffer in new windows |
| `SPC w m`  | maximise the current buffer                           |
| `SPC w d`  | delete current window                                 |
| `SPC t g`  | toggles golden ratio view of windows                  |


## Golden Ratio

[Golden-ratio](https://github.com/roman/golden-ratio.el) automatically lays out windows in a Fibonacci style pattern.  The active window becomes the largest window and all other windows are automatically shrunk so they are out of the way, but still visible.

![Spacemacs - Golden Ratio in action](https://camo.githubusercontent.com/26b1ac5fec67a2c557cfbe87382a0134d3443fd0/68747470733a2f2f7261772e6769746875622e636f6d2f726f6d616e2f676f6c64656e2d726174696f2e656c2f6173736574732f676f6c64656e5f726174696f5f656c2e676966)
