# Org blocks - source code and more

Block are used to highlight source code and other areas of text that should be highlight differently.

++comma++ ++"b"++ ++"d"++ calls (`org-babel-demarcate-block`) opens a list of programming languages to select from, pasting an org source code block with the chosen language.

![Spacemacs Org mode - babel demarcate block language list](/images/spacemacs-org-babel-demarcate-block-language.png)

When choosing clojure as the language, a source code block is added with the label clojure to indicate the language.

```elisp
#+BEGIN_SRC clojure
#+END_SRC
```

++comma++ ++"i"++ ++"b"++  displays the currently available templates to use as blocks (`org-insert-structure-template`).  These templates provide a wider range than only the source code block.

![Spacemacs Org mode - structure template menu](/images/spacemacs-org-structure-templates.png)
