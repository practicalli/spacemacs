# Treemacs - Visualise your project structure

You can easily view your project structure and navigate your project files with Treemacs.

Show files and directories as a navigable tree in a buffer.  Spacemacs uses a pop-up buffer to the left hand side of the frame to display treemacs.

Toggling open the treemacs buffer will show the directory of the current buffer.

Opening the treemacs project root will show the directory list for the project that the current buffer is part of.

| Vim Normal | Emacs     | Command                    | Description                    |
|------------|-----------|----------------------------|--------------------------------|
| `SPC f t`  | `M-m f t` | treemacs-toggle            | Show / hide treemacs buffer    |
| `SPC p t`  | `M-m p t` | treemacs-find-project-root | Show project root in treemacs  |
| `SPC 0`    | `M-m 0`   | `select-window-0`          | Switch to open treemacs buffer |

![Treemacs](/spacemacs/images/spacemacs-treemacs-project-example.png)


## Treemacs shows version control changes

New and changed files are highlighted in Treemacs against the current version controlled changes in the project.

Directory names turn blue when they contain changes.  Filenames turn green when they are changed.

![Treemacs - showing uncommitted changes](/spacemacs/images/spacemacs-treemacs-project-changes.png)


## Treemacs Keybindings

Press `?` in the treemacs buffer to see the available keybindings to control treemacs and use more of its features.

![Spacemacs Treemacs Key Hints](/spacemacs/images/spacemacs-treemacs-keybindings.png)
