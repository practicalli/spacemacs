# Navigating Projects with Neotree

You can navigate the directories of your project in several ways within Emacs.  Typically I will just add or create the files I want to work with using find file.

You can easily view your project structure and navigate your project files with Neotree.

Alternatives also include **dird** and **projectile**.

## Neotree 

Show files and directories as a navigable tree in a buffer.  Spacemacs uses a pop-up buffer to the left hand side of the frame to display neotree.

Toggling open the neotree buffer will show the directory of the current buffer.

Opening the neotree project root will show the directory list for the project that the current buffer is part of.

| Spacemacs | Major mode | Emacs | Evil    | Command                   |
|-----------|------------|-------|---------|---------------------------|
| `SPC f t` |            |       | `, f t` | neotree-toggle            |
| `SPC p t` |            |       |         | neotree-find-project-root |


![Neotree](/images/spacemacs-neotree-project-example.png)


**Spacemacs Shortcut in Neotree Buffer**

![Spacemacs Neotree Key Hints](/images/spacemacs-neotree-key-hints.png)

Shortcuts depend on which mode you are in, Evil or Holy

> TODO: Check these keybindings

| Evil  | Holy      | Description                                                     |
|-------|-----------|-----------------------------------------------------------------|
| `j`   | `n`       | next line                                                       |
| `k`   | `p`       | previous line                                                   |
| `RET` |           | Open file or Fold/Unfold directory                              |
| `g r` |           | Refresh                                                         |
| `A`   |           | Maximize/Minimize the NeoTree Window                            |
| `H`   |           | Toggle display hidden files                                     |
|       | `C-c C-n` | Create a file or create a directory if filename ends with a ‘/’ |
| `d`   | `C-c C-d` | Delete a file or a directory                                    |
|       | `C-c C-r` | Rename a file or a directory                                    |
| `R`   | `C-c C-c` | Change the root directory                                       |
