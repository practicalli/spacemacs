# Create a remote fork

Create or select a local Git repository and run magit status, `, g s`.

`c f` to create a remote fork, prompt for the GitHub account or organisation to fork the repository too.

![Spacemacs Magit Forge create fork - fork to](/images/spacemacs-magit-forge-create-fork-to.png)

Prompt for the name of the new remote repository

![Spacemacs Magit Forge create fork - remote name](/images/spacemacs-magit-forge-create-fork-remote-name.png)

> #### Hint::Configure owned GitHub accounts and organisations
> Add  `(setq forge-owned-accounts '(("practicalli" "jr0cket" )))` to the `dotspacemacs/user-config` section of `.spacemacs` to define GitHub accounts and organisations that can be forked to.
>
> Add `(setq forge-owned-blacklist '(("bad-hacks" "really-bad-hacks")))` to define accounts and organisations not to include.  This over-rides the `forge-owned-accounts` setting.
>
> [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) repository contains these settings.


 GitHub user and organization accounts owned
 used by @ c f  to create a fork

 To blacklist specific accounts,
 over-riding forge-owned-accounts
