# Neotree - Visualise your project structure 

You can easily view your project structure and navigate your project files with Neotree.

Show files and directories as a navigable tree in a buffer.  Spacemacs uses a pop-up buffer to the left hand side of the frame to display neotree.

Toggling open the neotree buffer will show the directory of the current buffer.

Opening the neotree project root will show the directory list for the project that the current buffer is part of.

| Spacemacs | Emacs     | Evil | Command                   | Description                   |
|-----------|-----------|------|---------------------------|-------------------------------|
| `SPC f t` | `M-m f t` |      | neotree-toggle            | Show / hide neotree buffer    |
| `SPC p t` | `M-m p t` |      | neotree-find-project-root | Show project root in neotree  |
| `SPC 0`   | `M-m 0`   |      | `select-window-0`         | Switch to open neotree buffer |


![Neotree](/images/spacemacs-neotree-project-example.png)

> Neotree must be running in order to switch to its buffer using `SPC 0`


## Spacemacs Shortcuts in Neotree Buffer

Press `?` in the neotree buffer to see the available keybindings to control neotree

![Spacemacs Neotree Key Hints](/images/spacemacs-neotree-key-hints.png)

