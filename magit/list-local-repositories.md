# List your local Git repositories

`SPC g L` will list all the repositories along with basic status information (branches, dirty, etc). This is very useful as the number of created or cloned repositories grows on your computer.

![Magit: List Git repositories on your computer](/images/spacemacs-magit-list-repositories.png)

You first need to tell Magit where your repositories are on your computer.

## Configure the location of your Git repositories
`magit-repository-directories` is used to define which directories Magit should search in to find your Git repositories. This configuration should be added to the `dotspacemacs/user-config` section of your `.spacemacs` file.

In the following example the Git repositories are all under a directory called `projects` in your home directory.  It also specifically adds the Spacemacs repository in `.emacs.d`.

```elisp
(setq magit-repository-directories
        '(("~/.emacs.d"  . 0)
          ("~/projects/" . 2)))
```

The number represents the depth of subdirectories in which magit searches for Git repositories in the specified directory.

> ####Hint:: Setting repository directories changes Magit Status behaviour
> `SPC g i` should be used to initialize a new git repository once `magit-repository-directories` is set, as `SPC g s` will just list all the existing git repositories.
>
>  If you use `SPC g s` to initialise a new git repository in the current project, then you will need to enter `.` and magit will prompt you to confirm you want to create a new git repository for the current project.
>
![Spacemacs Magit: git status list of existing repositories](/images/spacemacs-magit-git-status-helm-list-of-repositories.png)
