# Line Numbers
Line numbers can be toggled for individual buffers via the Spacemacs toggle menu or configured in your `.spacemacs` file.

Relative numbering is useful when using Vim style editing as it allows you to jump a relative number of lines from the current line.

`10 j` in **Evil normal** mode will jump 10 lines forward.

With relative numbering, the current line number is shown and all other numbers are relative to the number of lines away they are from the current line.  Relative numbering is useful for jumping to different parts of your file or running commands on a number of lines, eg. delete, indent, multiple cursors (`g r`)

| Keybindings | Description                  |
|-------------|------------------------------|
| `SPC t n`   | Toggle line numbers          |
| `SPC t r`   | Toggle relative line numbers |

[![Spacemacs - Toggle menu](../images/spacemacs-toggle-menu.png)](../images/spacemacs-toggle-menu.png)

## Vim style line number configuration
Practicalli recommends using visual line numbers for Vim style editing, which provides relative numbering that does not count hidden or folded code (`z a`).

`SPC f e d` to open the `.spacemacs` file and `SPC s s`dotspacemacs-line-numbers` to jump to the configuration option.

Add this configuration and `SPC f s` to save the file.  `SPC f e R` to reload the configuration (or `SPC q r` to restart Spacemacs).

```elisp
dotspacemacs-line-numbers '(:visual t
                            :disabled-for-modes dired-mode
                                                doc-view-mode
                                                pdf-view-mode
                            :size-limit-kb 1000)
```

The configuration provides visual line numbers for buffers all buffers except dired, doc-view and pdf-view buffers.

Line numbers are also disabled for large files, as it can slow Emacs down considerably (although this may be less of a problem with Emacs 26.3 and native line numbers).


If you want to turn line numbers off for all buffers by default, set the value back to the default `nil` value.

```elisp
dotspacemacs-line-numbers nil
```


> ####Hint::Jumping to a line without line numbers
> `SPC j l` will jump the cursor to the specified line by temporarily labelling each line with a unique letter combination.  This allows you to jump quickly to a line even if you are not using line numbers.
