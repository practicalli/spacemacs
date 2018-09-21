# Autocompletion

You can include yasnippets in the autocompletion popup menus too.

![Spacemacs - Snippets - Markdown example](/images/spacemacs-snippets-example-markdown-code.png)


## Add auto-completion layer and variables

Edit the `.spacemacs` configuration file and in the `dotspacemacs-configuration-layers` and add the autocompletion layer with the following options.


```lisp
   dotspacemacs-configuration-layers
   '(
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
    )
```
