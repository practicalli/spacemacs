# Clone and Fork remote repositories
The github layer provides commands to clone and fork repositories from Spacemacs.

`SPC g h c /` to search GitHub for a repository, returning a list of matching repository names that you can clone.

`SPC g h c c` to clone a specific repository if you have the exact name, e.g. `practicalli/spacemacs-content` or the URL for the repository.

A prompt is displays to define the path where the remote repository will be cloned too.

If the remote repository is not from your own GitHub account, a prompt asks if you wish to create a fork of the project.  `y` will create a fork in your GitHub account (you are not given an option to select an organisation in which to create a fork.)

`y` at the final prompt will set the remote repository as the default push destination.

Once completed the Magit Status buffer displays.

`M` will show the details of the remote repositories.  `r` will rename the selected remote, i.e. change `origin` to the more specific `practicalli` or `jr0cket` name.

`q` to leave the Magit Status buffer.

`SPC f f` to open files from this project.


## Pushing / Pulling changes
`P p` pushes local commits and is set to the fork if you created one after the clone, otherwise its the cloned repository

`F u` pulls remote commits from the cloned repository (upstream)

See [Pull Changes](pull-changes.md) and [Push Changes](push-changes.md) for more details.
