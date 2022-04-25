# Evil for Vim Style Editing

[Evil (extensible vi layer for Emacs)](https://github.com/emacs-evil/evil) provides multiple editing states, [multi-modal editing](/why-spacemacs/states.md), simplifying keybindings by reducing the need for simultaneous key presses.

Spacemacs provides Evil editing states and simplified keybindings throughout all layers and major modes.

![Spacemacs - Evil states](/images/spacemacs-states-vim.png)

* **normal** - for manipulating and navigating existing text (default state)
* **insert** - for writing new text
* **visual** - for selecting blocks of text
* **iedit** - edit multiple regions simultaneously
* **lisp** - structural editing for Clojure & Lisp style languages (e.g. slurp, barf)

First get familiar with **normal**, **insert** and **visual** states.  Then when you are comfortable, move on to **iedit** and **lisp** states.

> #### Hint::Normal state by default
> Evil normal state should be used most of the time, unless you are writing code or creating lots of text.


## Learn Vim-style editing

Vim-style editing is arguably the most effective way to work with text, supporting changes as much through text manipulation as editing text.  Once practised, vim-style editing is far faster than uni-mode editing.

The recommended way to learn vim style editing is to practice and ideally use it for everything you do.

`SPC h T v` starts the build in Vim tutorial.  This provides the basic movement of vim and provides an interactive way to practice your skills

To help make Vim style editing become a sub-conscious act you should [learn to speak Evil](speaking-evil.md)

[Vim Adventures](https://vim-adventures.com/) is a web-based game that is an alternative to practising Vim.

[![Vim Adventures - learn VIM while playing a game](/images/vim-adventures.png)](https://vim-adventures.com/)


## Learning resource for Evil

* [Spacemacs: Migrating from Vim](http://spacemacs.org/doc/VIMUSERS.html)
* [Spacemacs Vim Cheatsheet](https://simpletutorials.com/c/3036/Spacemacs)
* [Graphical Cheatsheet Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)
* [Vim quick reference guide](http://vimhelp.appspot.com/quickref.txt.html)
* [Vim Casts](http://vimcasts.org/)
* [Editing as a power user - Vim to Spacemacs](https://steemit.com/vim/@hansvb/text-editing-as-a-power-user-from-vim-to-spacemacs-or-how-to-get-things-done)
* [Vim versus Spacemacs](https://www.slant.co/versus/42/69/~vim_vs_spacemacs)


A focused on learning Vim and understanding why its so powerful.  [Transcript and exercises](https://missing.csail.mit.edu/2020/editors/) are also available.

{% youtube %}
https://youtu.be/a6Q8Na575qc
{% endyoutube %}
