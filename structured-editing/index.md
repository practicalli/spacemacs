# Structured Text

One of the benefits of the lisp style syntax of clojure is its very easy to navigate its structure, eg. parenthesis.  You can easily jump between expressions as they are defined unambiguously.

This well defined structure makes it trivial to move expressions around, giving you a simple way to refactor the internals of your code.

Spacemacs uses **smart parens** to help you write structured code really fast and also move expressions around.  Smart parens is a newer implementation of the classic _paredit_ package.

## Smart parens strict mode

By running smart parens in strict mode it stops you from making simple errors with your structured code, like unbalanced parens.

Edit your `~/.spacemacs` configuration file, `SPC f e d`, and update `dotspacemacs-smartparens-strict-mode` the configuration to have a value of `t`

![Spacemacs - Configuration - smart parents strict mode](/images/spacemacs-configuration-smart-parens-strict-mode.png)

> See examples of what smart parens can do by looking at the [Animated guide to paredit](http://danmidwood.com/content/2014/11/21/animated-paredit.html)

See the article on [Paredit and smartparens](https://github.com/Fuco1/smartparens/wiki/Paredit-and-smartparens) for a comparison of these two packages.


## Balanced parens & other characters

The simplest feature of smart parens is keeping your parenthesis in balance.  This is done automatically by creating a closing paren when you type an open paren.

This also happens for other character delimiters, such as [] for vectors, {} for maps and "" for strings.

With strict mode on, then you are unable to delete any of these delimiters until they are empty.  For example I could not delete any paren of the following expression until I delete the content of the expression.

`(def brackets "They are the best")`

I would have to delete the contents of this def expression before I could remove the open or close paren.

<iframe width="560" height="315" src="https://www.youtube.com/embed/lLo72SxtrWw" frameborder="0" allowfullscreen></iframe>

## Slurp & Barf

These are the most commonly used tools I use when coding in Clojure.

**Slurp** brings something inside, like a noisy person eating soup

**Barf** expelling something, like someone who has consumed so very bad food (or drunk too much)

When I am writing my clojure code and I realise I put a value or function in the wrong place, rather than copy/paste or delete/re-type I can pull code into an expression (slurping) or push something out of an expression (barfing)

| Emacs | Description                        |
|-------|------------------------------------|
| `C-(` | pull an element in  from the left  |
| `C-)` | pull an element in  from the right |
| `M-(` | push an element out to the left    |
| `M-)` | push an element out to the right   |

> TODO: Figure out the Evil / Spacemacs approach to slurp, barf, etc.

