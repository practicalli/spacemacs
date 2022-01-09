# Helm Transient State

Use the Helm transient state to navigate the Helm results using Vim keybindings (`hjkl`) and call additional actions on those results.

Enter this transient state with `M-SPC` or `S-M-SPC` while in a Helm buffer, for example, when navigating the results such as file find `SPC f f`, buffer list `SPC b b`, or Emacs commands list `SPC SPC`.

[![Spacemacs - Helm Transient State menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-buffers-helm-transient-state.png)](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-buffers-helm-transient-state.png)

> ####Info::Gnome desktop binding clash
> `M-SPC` is used by the Gnome desktop for the window menu, so recommend you change the Gnome keyboard settings to use a different binding, i.e. `Super w`.

| Key Binding          | Description                                          |
|----------------------|------------------------------------------------------|
| `M-SPC` or `S-M-SPC` | initiate the transient state                         |
| `q`                  | quit transient state                                 |
| `TAB`                | switch to actions page and leave the transient state |
| `1`                  | execute action 0                                     |
| `2`                  | execute action 1                                     |
| `3`                  | execute action 2                                     |
| `4`                  | execute action 3                                     |
| `5`                  | execute action 4                                     |
| `6`                  | execute action 5                                     |
| `7`                  | execute action 6                                     |
| `8`                  | execute action 7                                     |
| `9`                  | execute action 8                                     |
| `0`                  | execute action 9                                     |
| `a`                  | switch to actions page                               |
| `g`                  | go to first candidate                                |
| `G`                  | go to last candidate                                 |
| `h`                  | go to previous source                                |
| `j`                  | select next candidate                                |
| `k`                  | select previous candidate                            |
| `l`                  | go to next source                                    |
| `t`                  | mark current candidate                               |
| `T`                  | mark all candidates                                  |
| `v`                  | execute persistent action                            |


## Helm actions for Buffer list

The transient state menu is really great for running actions over multiple files.

In this example Helm Transient State menu is used to select and kill multiple buffers easily.  Combining the pattern based searching with marking files (`T` marks all files listed for a particular pattern) makes it really easy to kill lots of Magit buffers that are no longer needed.

{% youtube %}
https://youtu.be/cadXnbAEfUo
{% endyoutube %}

> #### Hint::Prompt when using layouts
> Using layouts in Spacemacs will show a prompt when you kill a buffer that is not in the current layout.
> You can see this prompt at the end of the video as I kill all the magit buffers.
> I separate projects into their own groups of buffers to make it easier to work on multiple projects through out the month.


Select `a` switches to the actions page, or using `C-z` displays the list off all the available actions for a buffer.

![Spacemacs Buffers - Helm Actions](https://github.com/practicalli/graphic-design/blob/live/spacemacs/screenshots/spacemacs-helm-transient-state-actions.png#L1)
