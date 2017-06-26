# Org-mode

Literate programming is supported by a Org-mode, a feature rich way of creating documentation and managing tasks.

Simple open or create a new file with a `.org` filename extension.

For example, if you want to write a guide to your project, you could create an org-mode file called `user-guide.org`.  When you open this file in Spacemacs, org-mode is selected as the major mode for editing.


## Examples of what Org-mode can do

If you want to see many of the things Org-mode can do, take a look at one of these videos on youtube.

* [Getting started with Org Mode](https://www.youtube.com/watch?v=SzA2YODtgK4) - covers more than what you need to start with
* [Overview of Org Mode - Hack Emacs](https://www.youtube.com/watch?v=SzA2YODtgK4) - older, but has more examples



## Easy Templates

Org-mode has a [number of templates](http://orgmode.org/manual/Easy-Templates.html) that create common strucural elements such as code block sections.  Simply type the character **<** followed by the template name and press the `TAB` key

For example, type  **<s** then press `TAB` to create an empty Source block

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


## Yasnippet for Org-mode

There are a few snippets for Org-mode in `~/.emacs.d/elpa/yasnippet-20160501.1841/snippets/org-mode`.  There is also this [Github repository of Yasnippet for org-mode](https://github.com/yyr/yasnippets-orgmode) with more examples

You can also [create your own snippets](http://jr0cket.co.uk/2016/07/spacemacs-adding-your-own-yasnippets.html) in either of the following directories:

* `~/.spacemacs.d/snippets/org-mode`
* `~/.emacs.d/private/snippets/org-mode` 

