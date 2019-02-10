# Getting started with Spacemacs

With Emacs version 25.1 (or greater) installed, simply clone or download the Spacemacs configuration, first moving any existing `~/.emacs.d` Emacs configuration out of the way.

> ####Hint::Emacs install guide
> Follow the [Emacs installation guide](/before-you-start/install-emacs.html) if you do not have version 25.1 or greater.
> Ensure you have read the [before you start](/before-you-start/) instructions


## Clone Spacemacs

Use your favourite git client or the following command in a terminal window to clone Spacemacs:

```
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

> ####Hint::Using Spacemacs develop branch for latest fixes
> The latest updates and fixes are available much sooner if you use the `develop` branch of Spacemacs. > In a terminal window, change to the `develop` branch using the following commands:
```bash
cd ~/.emacs.d/
git checkout develop
```
> The `develop` branch is very stable and its recommended that you use this branch for Spacemacs.

## Run Emacs to complete the Spacemacs install

Then run Emacs as normal.  Spacemacs will start installing a few key packages and then go on to ask you how you want your Spacemacs.

Answer the following questions when prompted in Emacs (just hit `Enter`)

| Prompt                  | Answer       |
|-------------------------|--------------|
| Evil or Holy mode       | **Evil**     |
| Standard or Lightweight | **Standard** |
| Helm or Ivy             | **Helm**     |

Spacemacs will now download all its Emacs packages and this will take 5 to 10 minutes based on your Internet speed.

Once all the packages have downloaded, we recommend you restart Spacemacs, `SPC q r`.
