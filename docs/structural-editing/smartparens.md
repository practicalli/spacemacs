# Smartparens - Writing structural text
Spacemacs uses [Smartparens](https://github.com/Fuco1/smartparens) to write and navigate code quickly, ensuring the structure of the code does not break (i.e. no unbalanced parens).

smartparens keeps parens in balance by automatically creating a closing paren when you type an open paren, e.g () for lists,  [] for vectors, {} for maps and "" for strings.

## Smartparens strict mode
Enable strict mode to prevent the deletion of parens that would leave them unbalanced.  For example, the characters within parens must be deleted before deleting both parens at the same time.

<p align="center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/lLo72SxtrWw" frameborder="0" allowfullscreen></iframe>
</p>

`SPC f e d` to edit `~/.spacemacs` configuration file and update `dotspacemacs-smartparens-strict-mode` to have a value of `t`

![Spacemacs - Configuration - smart parents strict mode](/images/spacemacs-configuration-smart-parens-strict-mode.png)

> #### Hint::Smartparens supports all languages
> Smartparens is a newer implementation of _paredit_ package and provides support for all languages, not just Clojure. [Paredit and smartparens](https://github.com/Fuco1/smartparens/wiki/Paredit-and-smartparens) has a comparison of these two packages.

## Jump past the end of an expression
Using smart closing parenthesis, `)` jumps to the end of the current expression.

`C-q` temporarily disables this feature, allowing a `)` to be entered

`dotspacemacs-smart-closing-parenthesis` in `.spacemacs` controls this feature, set this to `t` to enable.

```elisp
dotspacemacs-smart-closing-parenthesis t
```


## Smartparens and symbol highlighting
Spacemacs highlights the surrounding symbols, including any parents.  So if you are in a nested list, `(parent code (nested code))`, then if the cursor is on the nested code, both nested & parent symbols are highlighted.

A closing symbol is also highlighted when the cursor is at the opening symbol.


## References
* [Animated guide to paredit](http://danmidwood.com/content/2014/11/21/animated-paredit.html)
