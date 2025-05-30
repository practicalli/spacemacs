# Evil for Vim Style Editing

[:globe_with_meridians: Evil (extensible vi layer for Emacs)](https://spacemacs.org/layers/+spacemacs/spacemacs-evil/README.html){target=_blank} provides multiple editing states, [:fontawesome-solid-book-open: multi-modal editing](/spacemacs/introduction/why-spacemacs/states/), simplifying keybindings by reducing the need for simultaneous key presses.

Spacemacs provides Evil editing states and simplified keybindings throughout all layers and major modes.

![Spacemacs - Evil states](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/concepts/spacemacs-states-evil.png?raw=true)

- **normal** - for manipulating and navigating existing text (default state)
- **insert** - for writing new text
- **visual** - for selecting blocks of text
- **iedit** - edit multiple regions simultaneously
- **lisp** - structural editing for Clojure & Lisp style languages (e.g. slurp, barf)

First get familiar with **normal**, **insert** and **visual** states.  Then when you are comfortable, move on to **iedit** and **lisp** states.

!!! HINT "Normal state by default"
    Evil normal state should be considered the default state as it is where you should be most of the time, unless writing lots of new code or text.

    Practice pressing ++esc++ (or `fd` combo) after adding text until it becomes a natural reaction.


## Learn Vim-style editing

Vim-style editing is arguably the most effective way to work with text, supporting changes as much through text manipulation as editing text.  Once practised, vim-style editing is far faster than uni-mode editing.

The recommended way to learn vim style editing is to practice and ideally use it for everything you do.

++spc++ ++"h"++ ++t++ ++"v"++ starts the build in Vim tutorial.  This provides the basic movement of vim and provides an interactive way to practice your skills

To help make Vim style editing become a sub-conscious act you should [:fontawesome-solid-book-open: learn to speak Evil](../vim-style/speaking-evil.md)


> NOTE: [:globe_with_meridians: Vim Adventures](https://vim-adventures.com/){target=_blank} is a web-based commericial game that provides an interactive way to practise Vim. First levels are free.



## Learning resource for Evil

- [:globe_with_meridians: Spacemacs: Migrating from Vim](http://spacemacs.org/doc/VIMUSERS.html){target=_blank}
- [:globe_with_meridians: Spacemacs Vim Cheatsheet](https://simpletutorials.com/c/3036/Spacemacs){target=_blank}
- [:globe_with_meridians: Graphical Cheatsheet Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html){target=_blank}
- [:globe_with_meridians: Vim quick reference guide](http://vimhelp.appspot.com/quickref.txt.html){target=_blank}
- [:globe_with_meridians: Vim Casts](http://vimcasts.org/){target=_blank}
- [:globe_with_meridians: Editing as a power user - Vim to Spacemacs](https://steemit.com/vim/@hansvb/text-editing-as-a-power-user-from-vim-to-spacemacs-or-how-to-get-things-done){target=_blank}
- [:globe_with_meridians: Vim versus Spacemacs](https://www.slant.co/versus/42/69/~vim_vs_spacemacs){target=_blank}


A focused on learning Vim and understanding why its so powerful.  [:globe_with_meridians: Transcript and exercises](https://missing.csail.mit.edu/2020/editors/) are also available.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/a6Q8Na575qc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>
