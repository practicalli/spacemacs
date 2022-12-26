# Org-mode tweaks

Here are some simple tweaks to `org-mode` that you may find useful.


## Wrapping lines with `truncate lines`

++spc++ ++"t"++ ++"l"++ toggles `truncate-lines` in a buffer, the same as wrap lines in other editors.  `truncate-lines` will wrap at what ever size the buffer…org-mode with truncate lines on.  There may be some other minor conflicts

If `truncate-line` is what…`dotspacemacs/user-config` section:  …`(add-hook 'org-mode-hook (lambda () (setq truncate-lines t)))`

[![Truncate lines example](/images/spacemacs-truncate-lines-example.png)](/images/spacemacs-truncate-lines-example.png)

Any lines that are truncated have a return arrow symbol in the right hand margin of that line as a visual clue that the line has been wrapped.
