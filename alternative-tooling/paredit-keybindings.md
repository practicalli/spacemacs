# Paredit keybindings

To use Paredit with Spacemacs you can use commands via `SPC SPC` or define your own keybindings.


## Spacemacs recommended custom keybindings

Spacemacs recommends custom keybindings be defined under `SPC o`.

So you can define keybindings under `SPC o` for paredit, for example `SPC o p s` for paredit slurp.

Using `SPC o` ensures that your keybindings will not clash with any others provided by Spacemacs.

## Classic Paredit keybindings

You could use the classic Emacs style keybindings for paredit as follows

> ####TODO::Should provide examples of using web hook
> define-key on the global-map will set the keybindings for every mode.  For paredit it makes sense to set these keybindings for only clojure-mode

For example, you can define keybindings for slurping and barfing in the `dotspacemacs/user-config` section of the `.spacemacs` file.

```elisp
(define-key global-map (kbd "C-)") 'sp-forward-slurp-sexp)
(define-key global-map (kbd "C-(") 'sp-backward-slurp-sexp)
(define-key global-map (kbd "M-)") 'sp-forward-barf-sexp)
(define-key global-map (kbd "M-(") 'sp-backward-barf-sexp)
```
