# MacOSX Specific configuration

## MacOSX Layer
The [OSX layer](https://develop.spacemacs.org/layers/+os/osx/README.html) globally defines common macOS key bindings.
* `⌘` is set to `hyper` and `⌥` is set to `meta`
* In dired use `gls` instead of `ls`
* Fix separator colors of Spaceline mode-line


## Disable touchpad zoom gestures
The touchpad on a Mac included gestures to zoom the font.  If you find the touchpad gestures unwanted, they can be disabled by setting their key binding to `nil`.
```elisp
(define-key global-map (kbd "<magnify-up>") nil)
(define-key global-map (kbd "<magnify-down>") nil)
```

Another approach would be to call a dummy function or a function that has some conditional. In this case define a function to that carries out the function required.  Then bind that function to the key bindings for the touchpad gesture.
```elisp
(defun practicalli-nothing ()
  (interactive)
  (message "Buttons are not toys") )

(define-key global-map (kbd "<magnify-up>") 'practicalli-nothing)
(define-key global-map (kbd "<magnify-down>") 'practicalli-nothing)
```
