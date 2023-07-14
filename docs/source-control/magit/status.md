# Magit Status

++spc++ ++"g"++ ++"s"++ runs Magit status, showing the status of the local git repository and any attached remote repositories.  Magit status is a full Git client and can run any Git commands.

++question++ shows all the command menus available for committing

++"g"++ ++"r"++ to refresh Magit status buffer

![Spacemacs Magit help menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-help-menu.png)


## Navigating Magit Status buffer

++"j"++ and ++"k"++ to move to next / previous line

++open-bracket++ and ++close-bracket++ jumps to next / previous section at the current level

++tab++ to expand a section

![Spacemacs Magit Status Example](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-status-example-full.png)


## Using Magit status directly

If you run git status from a file that is not currently in a git project, magit will prompt you to create a git project, allowing you to select the root of the project directory

* confirm you want to create a git repository
* specify where to create the repository, the root directory for the git repository

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/AdEOazt1rD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


!!! HINT "Create new project with magit-repository-directories configured"
    `magit-repository-directories` can be defined with with a collection of directories, used by helm pop-up menu will list the Git repositories within those directories rather than prompting to create a new repository. Type `.` as the selection to create a new repository with the current project.


## Magit Dispatch

`SPC g m` calls `magit-dispatch` which opens a transient menu with all the Magit commands found in Magit Status buffer.  Git commands can be run without the need of the Magit status buffer.

![Spacemacs Magit help menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-magit-help-menu.png)


# Magit Status Fullscreen

Magit status in fullscreen mode provides lots of space to work with changes, look at logs and compare diffs.

| Keybinding              | Description                                                                   |
|-------------------------|-------------------------------------------------------------------------------|
| ++"q"++                 | returns to previous window layout, keeping the Magit status buffer available. |
| ++spc++ ++"u"++ ++"q"++ | kills the magit status buffer and returns to previous layout                  |


!!! HINT "Magit fullscreen configured in Enhanced Clojure experience"
    Magit fullscreen is already configured if you followed the [Enhance Clojure experience](/install-spacemacs/enhance-clojure-experience.md).


## Configure fullscreen for Magit Status

Add the `git-magit-status-fullscreen t` variable to the `git` layer in `.spacemacs` to enable Magit fullscreen.

++spc++ ++"f"++ ++"e"++ ++"d"++ opens the Spacemacs configuration file

++slash++ and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  ++enter++ confirms the search text and ++"n"++ jumps to the next occurrence, ++n++ jumps to the previous occurrence.

```lisp
   dotspacemacs-configuration-layers
   '(
     (git :variables
          git-magit-status-fullscreen t)
    )
```

------------------------------------------

### Reload the configuration or Restart Spacemacs

For the changes to take effect, either reload the `~/.spacemacs` configuration using

++spc++ ++"f"++ ++"e"++ ++"R"++ to reload the Spacemacs configuration or ++spc++ ++"q"++ ++"r"++ to restart Spacemacs.
