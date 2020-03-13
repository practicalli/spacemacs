# Evil Basics - Vim Style Editing

Evil provides Vim style multi-modal editing and Spacemacs provides Vim keybindings throughout all major modes.

Vim style editing is arguably the most effective way for touch typists to use a text editor and you can easily edit much faster once you are practised.

The only way to learn vim style editing is to practice and ideally use it for everything you do.


Evil editing style provides [multi-modal editing](/why-spacemacs/states.html), so different types of editing is carried out by specific states.  One advantage of many states is that single characters can be used for key bindings which puts less strain on your hands whilst typing.

![Spacemacs - Evil states](/images/spacemacs-states-vim.png)


Selecting Evil mode will set Vim to be the default way of using Emacs, however, all the default Emacs keybindings will be available.

If you select holy mode then only the Emacs editing mode is available as Evil is not installed.

![Spacemacs - selecting Evil mode](/images/spacemacs-first-run-vim.png)




## Normal state by default

Spacemacs Evil providing multiple editing states, minimising the keybindings required for specific tasks as well as adding great power and flexibility when editing text.

Keep in the Evil normal state for most of the time, unless you are writing code or creating lots of text.

Normal mode is where you run all the Spacemacs commands.

To help make Vim style editing become a sub-conscious act you should [learn to speak Evil](speaking-evil.md)

![Spacemacs States](/images/spacemacs-states-vim.png)

* **normal** - for manipulating and navigating existing text
* **insert** - for writing new text
* **visual** - for selecting blocks of text
* **iedit** - edit multiple regions (i.e. multiple cursors)
* **lisp** - structural editing for Clojure & Lisp style languages (e.g. slurp, barf)

First get familiar with **normal**, **insert** and **visual** states.  Then when you are comfortable, move on to **iedit** and **lisp** states.

The following pages in this sections take you beyond the basics covered in the Vim tutorial.

## Learning Vim basics

`SPC h T v` starts the build in Vim tutorial.  This provides the basic movement of vim and provides an interactive way to practice your skills

[Vim Adventures](https://vim-adventures.com/) is a web-based game that is an alternative to practising Vim.

[![Vim Adventures - learn VIM while playing a game](/images/vim-adventures.png)](https://vim-adventures.com/)


Other learning resource for Vim include:

* [Spacemacs: Migrating from Vim](http://spacemacs.org/doc/VIMUSERS.html)
* [Spacemancs Vim Cheetsheet](https://simpletutorials.com/c/3036/Spacemacs)
* [Graphical cheet sheet tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)
* [Vim quick reference guide](http://vimhelp.appspot.com/quickref.txt.html)
* [Vim Casts](http://vimcasts.org/)
* [Editing as a power user - Vim to Spacemacs](https://steemit.com/vim/@hansvb/text-editing-as-a-power-user-from-vim-to-spacemacs-or-how-to-get-things-done)
* [Vim verses Spacemacs](https://www.slant.co/versus/42/69/~vim_vs_spacemacs)
