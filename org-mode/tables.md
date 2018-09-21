# Org-mode Tables

Org comes with a fast and intuitive table editor. Spreadsheet-like calculations are supported using the Emacs calc package (see Calc in GNU Emacs Calculator Manual).

This guide covers just the simple tables you can create when documenting your application or service.

The [Org-mode manual](https://orgmode.org/manual/Tables.html) covers tables in more detail, including:
* Built-in table editor for simple tables
* Column width and alignment, to overrule the automatic settings
* Column groups, grouping to trigger vertical lines
* Orgtbl mode, table editor as minor mode
* Table editor spreadsheet capabilities
* Org-Plot, plotting graphs from org tables


> ####Hint::Org-mode tables in Markdown
> Org-mode table commands can also be used in Markdown major mode which is very useful for tables of keybindings in your documentation.
>
> Edit your `.spacemacs` configuration file, `SPC f e d` and add a hook to the `dotspacemacs/user-config` section.  This hook will enable orgtbl-mode minor mode for every buffer using Markdown mode
```lisp
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
```
