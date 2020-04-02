# Switch to Spacemacs develop branch
Until the release of Spacemacs 0.300 it is highly recommended to use the Spacemacs `develop` branch.

If you have installed the default Spacemacs `master` branch, follow these steps to switch smoothly to Spacemacs `develop` branch.

## Clean the Spacemacs install
If you made changes to the  `~/.spacemacs` file, them move the file or rename it. Otherwise delete the `~/.spacemacs` file.

Delete the `~/.emacs.d` directory or just the `~/emacs.d/elpa/` directory.

## Install the Spacemacs develop branch
If you deleted the `~/.emacs.d` directory, clone the Spacemacs develop branch

```shell
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

If you did not delete the `~/.emacs.d/` directory, change the Git branch to `develop`

```shell
cd ~/.emacs.d/
git checkout -b develop
```

## Update the Spacemacs configuration
If you have changes from the original Spacemacs install:

`SPC D f f` to open ediff with the new `~/.spacemacs` file and your backup file.

Copy changes to the new `~/.spacemacs`.

`n`, `p` navigates (down/up) between each difference in the file.  `a` and `b` copies a change from one file to the other.  Accept all the changes from the template unless you know you made a specific change to your `.spacemacs` file.

`?` to list the diff commands (when the cursor is in window 3)

`q` to quit the ediff session (when the cursor is in window 3) and `SPC f s` to save the `.spacemacs` file.


## Start / Restart Spacemacs
Start (or restart) Emacs to use the `develop` version of Spacemacs.  This will download a large number of packages and may take a few minutes.

Once all the packages are downloaded, `SPC q r` (`emacs-restart`) to ensure all packages downloaded successfully and are loaded in the correct order.

You are now ready to enjoy Spacemacs `develop`.
