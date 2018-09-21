# Layouts

Layouts enable you to switch between different projects and other tasks you wish to seperate (email, irc, org-agenda, etc.)

Each

> ####Hint::Spacemacs Layouts documentation
> [Layouts - Spacemacs documentation](https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#layouts-and-workspaces)

![Spacemacs - Layouts - practicalli spacemacs layout](/images/spacemacs-layouts-example-practicalli-spacemacs.png)

![Spacemacs - Layouts - jr0cket blog layout](/images/spacemacs-layouts-example-jr0cket-blog.png)

![Spacemacs - Layouts - Clojure through code layout](/images/spacemacs-layouts-clojure-code-hhgttg.png)


## Layouts Transient State

`SPC l` opens the Layouts transient state, allowing you to create, delete and select layouts with a single character keybinding.

The most common commands are:

| Keybindings | Action                                                     |
|-------------|------------------------------------------------------------|
| `l`         | Create a new layout                                        |
| `d`         | Delete current layout                                      |
| `0..9`      | Select layout in position (creates layouts if none exists) |
| `TAB`       | Select previously displayed layout                         |
| `n` / `N`   | Next / Previous layout                                     |
| `<` / `>`   | Move layout left or right in the layout list               |


![Spacemacs - Layouts - transient state menu - `SPC l` ](/images/spacemacs-layouts-transient-state-menu.png)
