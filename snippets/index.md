# Snippets - Common code templates

Speed up the creation of common blocks of code using snippets, an easy to define text template system provided by the Emacs package called [yasnippets](https://www.emacswiki.org/emacs/Yasnippet)

YASnippet comes with a number of mode-specific snippets that expand to anything from a simple text replacement to a code block structure that allows you to skip through parameters and other sections of the code block.

For example, in html-mode typing `div` and pressing `M-/` expands to `<div id=" " class=" "> </div>` and places the cursor so you can type the `id` name.  Press `TAB` to move the cursor through the other sections, i.e. the `class` name and the contents of the div.

Many programming language layers come with their own pre-defined snippets and there are snippet commands for creating your own.

[![Spacemacs - Yasnippet - Crank out boilerplate code - Alex Miller](https://blog.alex-miller.co/assets/images/yasnippet_angular_component_demo.gif)](https://blog.alex-miller.co/emacs/spacemacs/2017/05/28/yasnippets.html)


> ####Hint::Snippet expand keybinding
> To expand a snippet simply type its name and press `M-/`.


## Snippets in Auto-completion popups

Snippets can be configured to appear in the auto-complete menu, so when you are typing you will see any matching snippet names.

For example, if you type `defn` then in the menu you will see the snippet as a `defn -> defn` menu item.  Selecting that menu item expands the snippet.

![Spacemacs - Snippets - Markdown example](/images/spacemacs-snippets-example-markdown-code.png)

Edit your `~/.spacemacs` configuration file and locate the `dotspacemacs/layers > dotspacemacs-configuration-layers` variable.  Add the variable `auto-completion-enable-snippets-in-popup t` to the auto-completion layer.

For example:

```elisp
(defun dotspacemacs/layers ()
  (
  ;;; some code ommitted here...
  dotspacemacs-configuration-layers
   '(
    (auto-completion :variables
                     auto-completion-enable-help-tooltip t
                     auto-completion-enable-snippets-in-popup t)
```


## Resources

For more examples on where snippets are useful, read Sacha Chua's article on {how to make better use of Yasnippet in my Emacs workflow}(http://sachachua.com/blog/2015/01/thinking-make-better-use-yasnippet-emacs-workflow/)
