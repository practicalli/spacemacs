# Org-mode Easy Templates

> #### Hint::Additional configuration required
> `(require 'org-tempo)` must be added to `dotspacemacs/user-config` in the `.spacemacs` file for Easy Templates to work.  `org-reveal` also conflicts with newer versions of

Org-mode [easy templates](https://www.gnu.org/software/emacs/manual/html_node/org/Easy-templates.html) provide source code block and other highlight sections.

`<` followed by the template alias and then `TAB` will expand the block template.

| Name | Template                          | Description          |
| ---  | ---                               | ---                  |
| s    | #+BEGIN_SRC ... #+END_SRC         | Adds a source block  |
| e    | #+BEGIN_EXAMPLE ... #+END_EXAMPLE |                      |
| q    | #+BEGIN_QUOTE ... #+END_QUOTE     |                      |
| v    | #+BEGIN_VERSE ... #+END_VERSE     |                      |
| c    | #+BEGIN_CENTER ... #+END_CENTER   |                      |
| l    | #+BEGIN_LaTeX ... #+END_LaTeX     | LaTeX markup section |
| L    | #+LaTeX:                          |                      |
| h    | #+BEGIN_HTML ... #+END_HTML       | HTML sectiion        |
| H    | #+HTML:                           |                      |
| a    | #+BEGIN_ASCII ... #+END_ASCII     |                      |
| A    | #+ASCII:                          |                      |
| i    | #+INDEX: line                     |                      |
| I    | #+INCLUDE: line                   |                      |

Add custom templates by adding to the ‘org-structure-template-alist’
