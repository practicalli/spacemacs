## Installing Emacs

[![GNU Emacs banner](/images/emacs-logo-text.png)](/images/emacs-logo-text.png)

Emacs is available for Linux, MacOSX and Windows.  The [Spacemacs Readme suggested ways to install Emacs](https://github.com/syl20bnr/spacemacs/tree/develop#emacs)

> ####Info::Minimum Emacs Version - 25.1
> This guide used the `develop` version of Spacemacs which requires Emacs 25.1 or greater.

Here is a summary of the Emacs installation process for several operating system.

### Ubuntu Linux

Emacs is available via the Ubuntu software manager.  Install the package called **emacs25**.  Do not install the **emacs** package as its an earlier version of Emacs that is no longer supported.

```
sudo apt-get install emacs25
```

> ####Hint::Ubuntu Personal Package Archives
> If the version of Emacs is not available in your version of Ubuntu, add the Personal Package Archive from the [Ubuntu Emacs Team](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa).  Personally I use `emacs-snapshot` from this package archive which installs a recent snapshot of Emacs 27.


### MacOSX

For a self-contained install, download Emacs 26.3 or later from the [Emacs for OSX website](https://emacsformacosx.com/).

Alternative, if you use Homebrew, run the following command:

```bash
brew cask install emacs
```

### Windows (version 7 or 10)

Download Emacs-26.3 from the [GNU repository](http://ftp.gnu.org/gnu/emacs/windows/emacs-26) and extract the zip file to `%AppData%/local/Programs/emacs`.

Alternatively, if you are using the [Chocolatey package manager](https://chocolatey.org/) then install [Emacs version 26](https://chocolatey.org/packages/emacs)

Add the Emacs directory to the PATH variable in your user account environment variables.

To start Emacs run the command `runemacs.exe`.  You can also pin this to the start menu or task bar.

> ####Hint::Access to common Unix tools
> Command line tools, such as `diff`, are used by Emacs.  To have these command line tools available in Windows, install Emacs as above but then run emacs from a Unix shell such as [GitBash](https://git-scm.com/).


### MSYS2

Install Emacs (64bits build) with the following:

```
pacman -S mingw-w64-x86_64-emacs
```
