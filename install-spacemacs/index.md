# Getting started with Spacemacs

With Emacs version 25 installed, simply clone or download the Spacemacs configuration, first moving any existing `~/.emacs.d` Emacs configuration out of the way.

Use your favourite git client or the following command in a terminal window:

```
git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

Then run Emacs as normal.  Spacemacs will start installing a few key packages and then go on to ask you how you want your Spacemacs.


## Installing Emacs

[![GNU Emacs banner](/images/emacs-logo-text.png)](/images/emacs-logo-text.png)


## Ubuntu

Emacs is available via the Ubuntu software manager.  Install the package called **emacs25**.  Do not install the **emacs** package as its an earlier version of Emacs that is no longer supported.

```
sudo apt-get install emacs25
```

> ####Hint::Ubuntu Personal Package Archives
> If the version of Emacs is not available in your version of Ubuntu, add the Personal Package Archive from the [Ubuntu Emacs Team](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa)


### MacOSX

Install from [Emacs for MacOSX](http://emacsformacosx.com/) or via [Homebrew](https://brew.sh/)

```
brew tap railwaycat/homebrew-emacsmacport
brew install emacs-mac --with-spacemacs-icon  # OR, brew cask install emacs-mac
brew linkapps
```

### Windows

Download [GNU Emacs for Windows](https://www.gnu.org/software/emacs/) and Unzip the zip file preserving the directory structure.

Run `bin\runemacs.exe` or alternatively, create a desktop shortcut to `bin\runemacs.exe` and start Emacs by double-clicking on that icon.


### MSYS2 on Windows

Install Emacs (64bits build) with the following:

```
pacman -S mingw-w64-x86_64-emacs
```
