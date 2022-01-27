## Yasnippets

[YASnippets](https://github.com/joaotavora/yasnippet/blob/master/doc/index.org) uses plain text templates and so are very easy to learn and write.  Snippets are specific to an Emacs major mode.  They include tab stops, placoders with default values and markers to ensure correct indentation.

Yasnippets can also execute Elisp code, opening up a large number of Emacs functions to use within a snippet.

Spacemacs automatically includes [snippets for many programming languages and text formats](https://github.com/AndreaCrotti/yasnippet-snippets), including [snippets for Clojure](https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/snippets/clojure-mode).

Take a look at how to write your own snippets and the custom [snippets created by Practicalli](practicalli-snippets.md)

## Configure yasnippet

The [auto-completion](https://develop.spacemacs.org/layers/+completion/auto-completion/README.html) layer adds yasnippet and the official snippet collection, yasnippet-snippets.

Add `auto-completion` to the `dotspacemacs-configuration-layers` list in `.spacemacs`

The [clojure layer](https://develop.spacemacs.org/layers/+lang/clojure/README.html) providing additional snippet templates from the [clojure-snippets](https://github.com/mpenet/clojure-snippets) package.

> #### Hint::[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) includes this configuration


## Snippets in Auto-completion popups

Snippets can be included in the auto-complete pop-up menu.

![Spacemacs - Snippets - Web html link](/images/spacemacs-auto-completion-snippets-html-link.png)

`TAB` to navigate through the list of menu items.

`RET` to select the snippet and add the template to the buffer.

Add the layer variable `auto-completion-enable-snippets-in-popup t` to the `auto-completion` layer in `.spacemacs`.

Practicalli also recommends adding `auto-completion-enable-sort-by-usage t` to show the most commonly used snippets at the top of the auto-completion pop-up menu.

```elisp
(auto-completion :variables
                 auto-completion-enable-help-tooltip t
                 auto-completion-enable-snippets-in-popup t
                 auto-completion-enable-sort-by-usage t)
```


## Snippet save locations

Snippets are saved in `~/.emacs.d/private/snippets/`.  When `~/.spacemacs.d` is used for the Spacemacs configuration, snippets are saved in `~/.spacemacs.d/snippets/` directory.

Each snippet is saved in its own file, named after the alias of the snippet.  The snippet file is located in a directory named after the Emacs major mode it belongs to.

A snippet called `wip` for Clojure has a file name `wip` and is in saved in directory named `clojure`.


## Resources
* [How to make better use of Yasnippet in my Emacs workflow](http://sachachua.com/blog/2015/01/thinking-make-better-use-yasnippet-emacs-workflow/) - Sacha Chua
