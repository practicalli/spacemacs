# Joker

> ####TODO::Work in progress

To use Joker with Spacemacs you should
* Install Joker
* Ensure Joker is on the executable path in Emacs
* Add `clojure-lint` layer to `.spacemacs`



## Removing false positives

Create a .joker file in the project root and add the fully qualified name of known macros

Here's from a small rum project:

```clojure
{:known-macros [rum.core/defc
                rum.core/defcc
                rum.core/defcs]}
```
