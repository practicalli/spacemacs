# Switch to Spacemacs develop branch

Until the release of Spacemacs 0.300 it is highly recommended to use the Spacemacs `develop` branch. If you have installed the default Spacemacs `master` branch, follow these steps to switch smoothly to Spacemacs `develop` branch.

If you have not customized the `.spacemacs` file then simply delete it and checkout the `develop` branch in `.emacs.d`.  Starting Emacs will create a new .spacemacs file with the latest updates.

```shell
cd ~/.emacs.d
git checkout develop
```

## Updating to develop - keeping .spacemacs changes

If you have changes in the `.spacemacs` file you wish to keep, there are two approaches.  Either update Spacemacs on top of your changes or replace the configuration and use a diff tool to copy your changes back to the `.spacemacs` file.

=== "Update Existing Configuration"

    Make a backup of your `.spacemacs` file.

    Change into the `~/.emacs.d/` directory and change the Git branch to `develop`

    ```shell
    cd ~/.emacs.d/
    git checkout develop
    ```

    ++spc++ ++"f"++ ++"e"++ ++d++ (`spacemacs/ediff-dotfile-and-template`) to compare the develop version of the `.spacemacs.template` with your customized `.spacemacs` configuration.

    In the ediff buffer, use ++j++ and ++k++ to navigate changes, ++b++ to copy changes from the `spacemacs.template` to your custom `.spacemacs` configuration.

    You should accept all changes unless you know that you should keep a specific change (eg. layers, variable settings).

    ++q++ to quit the ediff session.

    ++spc++ ++"f"++ ++"s"++ to save the Spacemacs configuration file.

    Delete the `~/emacs.d/elpa/` directory, as packages will downloaded under `~/.emacs.d/elpa/develop/<emacs-version>/`.


=== "Clean install and diff changes"
    Delete the `~/.emacs.d` directory (backup any changes made in `.emacs.d/private` if relevant).

    Clone Spacemacs specifying the `develop` branch

    ```shell
    git clone -o upstream https://github.com/syl20bnr/spacemacs ~/.emacs.d
    ```

    Move the  `~/.spacemacs` file or rename it, allowing Spacemacs to create an updated configuration from the `develop` branch.


## Start Emacs

Start Emacs.  Select the editing style (vim, emacs) and spacemacs distribution (full, minimal) to use and Spacemacs creates a new `.spacemacs configuration`.

Spacemacs will download the distribution packages and packages for the default set of layers.  This may take a couple of minutes.


## Update Spacemacs configuration

If you have changes from the original Spacemacs install:

`SPC D f f` to open ediff.  Select the `~/.spacemacs` file first and then your `.spacemacs` backup file.

`j`, `k` navigates (down/up) between each difference in the file.  `b` copies a change from your custom `.spacemacs` file to the `~/.spacemacs` file now used by Spacemacs.

`?` to list the diff commands (when the cursor is in window 3)

`q` to quit the ediff session (when the cursor is in window 3) and `SPC f s` to save any changes made to the `.spacemacs` file.

## Restart Emacs to load all changes
`SPC q r` (`emacs-restart`) to ensure your .spacemacs changes and packages are loaded.  This may take a minute if you added layers to the `.spacemacs` configuration file.

Once Spacemacs restarts you are ready to enjoy Spacemacs `develop`.
