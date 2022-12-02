# Code folding methods

There are two code folding methods, evil folding (the default) and [origami](https://github.com/gregsexton/origami.el).  Evil fold is recommended for Clojure development.

Origami adds a recursive open and close and what it calls an org-mode header collapse (didn't seem to work on Clojure code). Origami seems less useful for Clojure than evil-fold, as folding seems to only work at the top level.

Origami allows you to [write your own parser](https://github.com/gregsexton/origami.el#does-it-support-my-favourite-major-mode) to teach different ways to fold code.  Origami is a great choice if you want to customise your code folding.


## Switching to origami code folding

`SPC f e d` to open the `.spacemacs` file

`SPC s s dotspacemacs-folding-method` to find the code folding setting, `RTN` to end the search.

Change the code folding method: `dotspacemacs-folding-method 'origami`

`SPC q r` to restarting Emacs and download the origami package.
