# Snippets - Common code templates
Speed up the creation of common code blocks with easy to define text templates provided by [yasnippet](https://github.com/joaotavora/yasnippet/blob/master/doc/index.org).

`M-/` expands the text under the point by any of the methods registered with hippie-expand. Yasnippets is one of the methods registered.

`TAB` will jump through the expanded snippet if it contains markers.

## Example using snippets
In `web` major mode, typing `link` and pressing `M-/` expands to `<link rel="stylesheet" href="url" type="text/css" media="screen" />` placing the cursor on `stylesheet`.  `TAB` to move the cursor to `url` to change the name of the CSS file. `TAB` again until the end marker is reached.

![Spacemacs - Snippets - Web html link expanded](/images/spacemacs-auto-completion-snippets-html-link-expanded.png)


## Configure yasnippet
The [auto-completion](https://develop.spacemacs.org/layers/+completion/auto-completion/README.html) layer adds yasnippet and the official snippet collection, yasnippet-snippets.

Add `auto-completion` to the `dotspacemacs-configuration-layers` list in `.spacemacs`

The [clojure layer](https://develop.spacemacs.org/layers/+lang/clojure/README.html) providing additional snippet templates from the [clojure-snippets](https://github.com/mpenet/clojure-snippets) package.

> #### Hint::[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) includes this configuration


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
