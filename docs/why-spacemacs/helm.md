# Helm & completion

Spacemacs helps you find things quickly with a minimum of typing, using [Emacs Helm](https://emacs-helm.github.io/helm/) - [Helm documentation wiki](https://github.com/emacs-helm/helm/wiki).

[Helm](https://github.com/emacs-helm/helm) is an incremental completion and selection narrowing framework.  Its the central control tower of Spacemacs, it is used to manage buffers, projects, search results, configuration layers, toggles and more.

For example, Helm helps you navigate files and directory names, only showing the matching names to the pattern you type.  This minimises the need to type directory and file names in full.

![Spacemacs - Helm narrowing and completion](http://tuhdo.github.io/static/part3/helm-mini.gif)

| Helm Keybinding | Helm action                    |
|-----------------|--------------------------------|
| `C-h`           | Up to parent directory         |
| `C-l`           | Into sub directory / open file |
| `C-j`           | Move down the helm menu        |
| `C-k`           | Move up the helm menu          |
| `TAB`           | Tab completion                 |
| `M-p`           | Traverse Helm history          |
| `C-y`           | Paste kill ring into helm      |
| `SPC w b`       | Switch to minibuffer           |

![Helm - narrowing and completion framework](https://avatars3.githubusercontent.com/u/1541688?v=3&s=200)
