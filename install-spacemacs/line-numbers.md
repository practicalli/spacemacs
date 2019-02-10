# Line Numbers

Line numbers can be toggled for individual buffers via the Spacemacs toggle menu or configured in your `.spacemacs` file.

Relative numbering is useful when using Vim style editing as it allows you to jump a relative number of lines from the current line.

`10 j` in **Vim normal** mode will jump 10 lines forward.

With relative numbering, the current line number is shown in the gutter and all other numbers are relative to the number of lines away they are from the current number.  Relative numbering is useful for jumping to different parts of your file or running commands on a number of lines (eg. delete, indent)

| Spacemacs | Emacs     | Description                  |
|-----------|-----------|------------------------------|
| `SPC t n` | `M-m t n` | Toggle line numbers          |
| `SPC t r` | `M-m t r` | Toggle relative line numbers |

[![Spacemacs - Toggle menu](../images/spacemacs-toggle-menu.png)](../images/spacemacs-toggle-menu.png)

> ####Hint::Jumping to a line without line numbers
> `SPC j l` will jump the cursor to the specified line by temporarily labelling each line with a unique letter combination.  This allows you to jump quickly to a line even if you are not using line numbers.

## Configure Line numbers for all buffers

Open the `.spacemacs` file (`SPC f e d`) and search (`/` or `C-s`) for `dotspacemacs-line-numbers`

Set the value to true to show line numbers for all buffers that are in `prog-mode` and `text-mode`, this includes any programming languages or text files.

```elisp
dotspacemacs-line-numbers t
```
For relative line numbers, set the value to relative

```elisp
dotspacemacs-line-numbers 'relative
```
If you want to turn line numbers off for all buffers by default, set the value back to the default `nil` value.

```elisp
dotspacemacs-line-numbers nil
```

## Vim style line number configuration
This is my approach to line numbers, using relative numbering and disabling line numbers for buffers that are not for coding
Line numbers are also disabled for large files, as it can slow Emacs down considerably.
```
dotspacemacs-line-numbers '(:relative t
                            :disabled-for-modes dired-mode
                                                doc-view-mode
                                                markdown-mode
                                                org-mode
                                                pdf-view-mode
                                                text-mode
                            :size-limit-kb 1000)
```
