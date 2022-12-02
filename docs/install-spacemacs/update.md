# Updating Spacemacs and Packages

Updating Spacemacs comes in three sections:

* Spacemacs project files
* `.spacemacs` configuration file
* Packages installed

{% youtube %}
https://youtu.be/XC7LGI0Q2u8
{% endyoutube %}


## Update Spacemacs project files

Choose the updates instructions based on the branch you use for Spacemacs, to select the appropriate process

<!-- Spacemacs update options -->
{% tabs develop="develop branch", master="master branch" %}

<!-- Updating Spacemacs when using the develop branch -->
{% content "develop" %}

### Update Spacemacs via Magit ###

Open a file in the `.emacs.d` directory, for example `.emacs.d/README.md`

`SPC g s` opens Magit status for the Spacemacs project

`F` pop-ups the pull menu, use `-r` to set rebase to `true`

`u` to pull from upstream.

If upstream is not set, Spacemacs will prompt you with a list of available remotes, there will be only one (the remote added when you first cloned the repository).

Spacemacs should update itself using Git in a few seconds.

`q` to quit out of Magit.


<!-- Updating Spacemacs when using the master branch -->
{% content "master" %}

### Update Spacemacs via Spacemacs Home buffer ###

`SPC b h` to open the Spacemacs Home buffer.

Move the cursor to **Update Spacemacs** and press return

Wait until Spacemacs finishes updating itself (should be less than a minute).


{% endtabs %}
<!-- End of Spacemacs update options -->


## Update the Spacemacs configuration

`SPC f e D` opens an `ediff` session, comparing your current `.spacemacs` file with the latest `.spacemacs-template`.

`n`, `p` navigates (down/up) between each difference in the file.  `b` copies a change from the template to your `.spacemacs file`.  Accept all the changes from the template unless you know you made a specific change to your `.spacemacs` file.

`q` to quit the ediff session and `SPC f s` to save the `.spacemacs` file.


## Update Packages

`SPC f e U` updates the packages.  Use this key binding from the Spacemacs Home buffer, `SPC b h`, to see the list of packages that will be updated

`y` to confirm you want to install the packages

_Wait until Spacemacs prompts you to restart_

`SPC q r` will restart Spacemacs, download all the new versions of the packages and install them.

_If downloading a considerable number of packages, or you see a lot of warnings, then using `SPC q r` for a second time can be useful to ensure that all new packages have been installed correctly._
