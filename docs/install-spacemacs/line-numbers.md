# Line Numbers

++spc++ ++"t"++ ++"n"++ menu toggles line numbers, showing consecutive (absolute) ++a++, relative ++r++ or visual ++v++ layout.

Configure `dotspacemacs-line-numbers` in Spacemacs configuration file to [show line numbers by default](#visual-style-line-number-configuration).

![Spacemacs - Toggle menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/spacemacs-line-numbers-comparison-labelled.png?raw=true)


## Relative line numbers for Evil

A relative numbering style (`visual`, `relative`) is highly recommended for [vim-style editing](/spacemacs-basics/vim-basics.md) as it provides an effective way to apply actions to multiple lines

++1++ ++0++ ++"j"++ jumps 10 lines forward

++"g"++  ++"c"++ ++9++ ++"j"++ comments 9 lines from current, downwards

++2++ ++4++ ++"g"++ ++"r"++ ++"j"++ selects multiple cursors for the next 24 lines

Relative line numbering shows the current line number with all other numbers the relative number of lines away from the current line.  Relative numbering is useful for jumping to different parts of your file or running commands on a number of lines, eg. delete, indent, multiple cursors (++"g"++ ++"r"++)


## Visual style line number configuration

Practicalli recommends using visual line numbers for Vim style editing, which provides relative numbering that does not count hidden or [folded code](/spacemacs/navigating-code/code-folding/).

++spc++ ++"f"++ ++"e"++ ++"d"++ open the Spacemacs user configuration file. ++spc++ ++"s"++ ++"s"++ `dotspacemacs-line-numbers` to jump to the configuration option.

Change the `dotspacemacs-line-numbers` configuration to the preferred method. ++spc++ ++"f"++ ++"s"++ to save the file.   ++spc++ ++"f"++ ++"e"++ ++"R"++ reloads the configuration (or ++spc++ ++"q"++ ++"r"++ to restart Spacemacs).

```elisp
dotspacemacs-line-numbers '(:visual t
                            :disabled-for-modes dired-mode
                                                doc-view-mode
                                                pdf-view-mode
                            :size-limit-kb 1000)
```

The configuration provides visual line numbers for buffers all buffers except dired, doc-view and pdf-view buffers.

Line numbers are also disabled for large files, as it can slow Emacs down considerably (although this may be less of a problem with Emacs 26.3 onward and native line numbers).

Turn line numbers off for all buffers by setting the `dotspacemacs-line-numbers` value to the default `nil` value.

```emacs
dotspacemacs-line-numbers nil
```

!!! HINT "Jumping to a line without line numbers"
    ++spc++ ++"j"++ ++"l"++ labels each line with a unique letter combination providing a quick way to a line even if there are no line numbers.
