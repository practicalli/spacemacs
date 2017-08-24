# Emacs Terminology

| Emacs Term | Description                                                                      |
|------------|----------------------------------------------------------------------------------|
| File       | A file on the file system                                                        |
| Buffer     | A container to display a file or other information                               |
| Window     | A section of Emacs that holds a buffer, allowing you to display multiple buffers |
| Frame      | Holds one or more windows                                                        |
| Minibuffer | A command line for Emacs - shows commands and some results                       |

![Emacs Terminology - Structure of Emacs](/images/emacs-terminology-structure.png)


## Working with Frames

When you open Emacs for the first time you are presented with a frame that contains a single window.

If you run Emacs again, or if you make a new frame `SPC w F `, then a second frame will appear containing a single window.

If you kill a frame, only that frame closes unless it is the last Emacs frame running, then Emacs itself closes.

If you quit Emacs, then all frames are closed.


## Working with windows

There can be one or more windows in Emacs.  Windows are used to split up the Emacs frame into sections.  This allows you to display multiple buffers (files, REPL, error messages, etc) at the same time.

Opening a new window to the left, `SPC w `

Switch between windows with `SPC w ` followed by a direction. Both `SPC w l` and `SPC w →` will move focus one window to the right.

Once you have finished with a window you can close it `SPC w d`.  Alternatively, If you just want one window open you can maximise that window, `SPC w m`, (although confusingly this uses the function maximise-buffer) and all other windows are closed.

## Golden Ratio

Spacemacs include the [golden-ratio](https://github.com/roman/golden-ratio.el) package that automatically lays out windows in a Fibonacci style pattern.  The window you edit becomes the largest window and all other windows are automatically shrunk to they are out of the way, but still readable.

![Spacemacs - Golden Ratio in action](https://camo.githubusercontent.com/26b1ac5fec67a2c557cfbe87382a0134d3443fd0/68747470733a2f2f7261772e6769746875622e636f6d2f726f6d616e2f676f6c64656e2d726174696f2e656c2f6173736574732f676f6c64656e5f726174696f5f656c2e676966)

## Additional features in Spacemacs

> TODO
