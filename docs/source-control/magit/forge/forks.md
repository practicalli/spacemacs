# Create a remote repository or fork

Fork of a Git project already cloned locally, e.g. to create a pull request and contribute back to an open source project.

??? WARNING "Only GitHub is supported"


## Fork a cloned repository

> `SPC g c` will clone a remote repository and prompts for a name or URL

`SPC g s` to open Magit Status

`@ c f` to create a remote fork,

Select or type in the name of the GitHub user or organisation account in which the fork of the repository should be created.

![Spacemacs Magit Forge create fork - fork to](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-create-fork-to-light.png?raw=true#only-light)
![Spacemacs Magit Forge create fork - fork to](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/magit/spacemacs-magit-forge-create-fork-to-dark.png?raw=true#only-dark)

Confirm the name of the alias for the forked repository (the name used as the push/pull default)

## Configure owned accounts and organisations

Include the accounts owned to have the names pre-filled when selecting where to create repositories, i.e. when creating a fork.

Define accounts and organisations in which a fork can be create using the `forge-owned-accounts` setting.

```emacs title="Spacemacs Configuration - dotspacemacs/user-config"
(setq forge-owned-accounts '(("practicalli" "practicalli-john" )))
```

Define accounts and organisations that should not be included, overriding matching items in the `forge-owned-accounts` setting.

```emacs title="Spacemacs Configuration - dotspacemacs/user-config"
(setq forge-owned-blacklist '(("bad-hacks" "really-bad-hacks")))`
```

!!! EXAMPLE "Practicall Spacemacs Config"
    [practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config) repository contains these settings.
    ```emacs
    ;; GitHub user and organisation accounts owned
    ;; used by @ c f  to create a fork
    (setq forge-owned-accounts
          '(("practicalli" "practicalli-john"
             "ClojureBridgeLondon" "ldnclj"
             "clojure-hacks")))

    ;; Blacklist Forge accounts
    ;; - over-rides forge-owned-accounts
    ;; (setq forge-owned-blacklist
    ;;       '(("bad-hacks" "really-bad-hacks")))
    ```
