# Helm & completion

![Helm - narrowing and completion framework](https://avatars3.githubusercontent.com/u/1541688?v=3&s=200){target=_blank align=right loading=lazy }

Spacemacs helps you find things quickly with a minimum of typing, using [Emacs Helm](https://emacs-helm.github.io/helm/){target=_blank} - [Helm documentation wiki](https://github.com/emacs-helm/helm/wiki){target=_blank}.

[Helm](https://github.com/emacs-helm/helm){target=_blank} is an incremental completion and selection narrowing framework.  Its the central control tower of Spacemacs, it is used to manage buffers, projects, search results, configuration layers, toggles and more.

For example, Helm helps you navigate files and directory names, only showing the matching names to the pattern you type.  This minimises the need to type directory and file names in full.

![Spacemacs - Helm narrowing and completion](http://tuhdo.github.io/static/part3/helm-mini.gif){loading=lazy}

| Helm Keybinding | Helm action                    |
|-----------------|--------------------------------|
| ++ctrl+"h"++    | Up to parent directory         |
| ++ctrl+"l"++    | Into sub directory / open file |
| ++ctrl+"j"++    | Move down the helm menu        |
| ++ctrl+"k"++    | Move up the helm menu          |
| ++tab++         | Tab completion                 |
| ++meta+"p"++    | Traverse Helm history          |
| ++ctrl+"y"++    | Paste kill ring into helm      |
| ++spc+"w"+"b"++ | Switch to minibuffer           |


# Helm Transient State

Use the Helm transient state to navigate the Helm results using Vim keybindings (`hjkl`) and call additional actions on those results.

Enter this transient state with `M-SPC` or `S-M-SPC` while in a Helm buffer, for example, when navigating the results such as file find `SPC f f`, buffer list `SPC b b`, or Emacs commands list `SPC SPC`.

![Spacemacs - Helm Transient State menu - light](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffers-helm-transient-state-light.png?raw=true#only-light)
![Spacemacs - Helm Transient State menu - dark](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-buffers-helm-transient-state-dark.png?raw=true#only-dark)

!!! WARNING "Gnome desktop binding clash"
    `M-SPC` is used by the Gnome desktop for the window menu, so recommend you change the Gnome keyboard settings to use a different binding, i.e. `Super w`.


| Key Binding   | Description                                          |
| ------------- | ---------------------------------------------------- |
| ++meta+spc++  | initiate the transient state                         |
| ++"q"++       | quit transient state                                 |
| ++tab++       | switch to actions page and leave the transient state |
| ++1++         | execute action 0                                     |
| ++2++         | execute action 1                                     |
| ++3++         | execute action 2                                     |
| ++4++         | execute action 3                                     |
| ++5++         | execute action 4                                     |
| ++6++         | execute action 5                                     |
| ++7++         | execute action 6                                     |
| ++8++         | execute action 7                                     |
| ++9++         | execute action 8                                     |
| ++0++         | execute action 9                                     |
| ++"a"++       | switch to actions page                               |
| ++"g"++       | go to first candidate                                |
| ++"G"++       | go to last candidate                                 |
| ++"h"++       | go to previous source                                |
| ++"j"++       | select next candidate                                |
| ++"k"++       | select previous candidate                            |
| ++"l"++       | go to next source                                    |
| ++"t"++       | mark current candidate                               |
| ++"T"++       | mark all candidates                                  |
| ++"v"++       | execute persistent action                            |


## Helm actions for Buffer list

The transient state menu is really great for running actions over multiple files.

In this example Helm Transient State menu is used to select and kill multiple buffers easily.  Combining the pattern based searching with marking files (`T` marks all files listed for a particular pattern) makes it really easy to kill lots of Magit buffers that are no longer needed.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/cadXnbAEfUo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>

!!! Hint "Prompt when using layouts"
    Layouts in Spacemacs show a prompt when killing a buffer that is not in the current layout, as seen at the end of the video when killing all magit buffers.

    Layers separate projects into their own groups of buffers so its easier to switch between multiple projects.


Select `a` switches to the actions page, or using `C-z` displays the list off all the available actions for a buffer.

![Spacemacs Buffers - Helm Actions](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-helm-actions-buffer-light.png?raw=true#only-light)
![Spacemacs Buffers - Helm Actions](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-helm-actions-buffer-dark.png?raw=true#only-dark)
