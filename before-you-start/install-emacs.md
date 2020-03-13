## Installing Emacs

[![GNU Emacs banner](/images/emacs-logo-text.png)](/images/emacs-logo-text.png)

Emacs is available for Linux, MacOSX and Windows.  The [Spacemacs Readme suggested ways to install Emacs](https://github.com/syl20bnr/spacemacs/tree/develop#emacs)

> ####Info::Minimum Emacs Version - 26.3
> This guide used the `develop` version of Spacemacs which requires Emacs 26.3 or greater.

Here is a summary of the Emacs installation process for several operating system.

{% tabs ubuntu="Ubuntu", macosx="MacOSX", windows="Windows", msys2="MSYS2" %}

<!-- Ubuntu Install -->
{% content "ubuntu" %}

Emacs is available via the Ubuntu software manager. Check which version is available using `apt-cache show emacs`

```
sudo apt-get install emacs
```

> ####Hint::Ubuntu Personal Package Archives
> If the Emacs version you want is not available, add the Personal Package Archive from the [Ubuntu Emacs Team](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa).
> Try the latest nightly builds of Emacs using the `emacs-snapshot` package, although be aware that some things may break.  You can install `emacs` and `emacs-snapshot` packages at the same time, calling `emacs` or `emacs-snapshot` to run the respective versions of Emacs.


<!-- MacOSX Install -->
{% content "macosx" %}

For a self-contained install, download Emacs 26.3 or later from the [Emacs for OSX website](https://emacsformacosx.com/).

Alternative, if you use Homebrew, run the following command:

```bash
brew cask install emacs
```


<!-- Windows Install -->
{% content "windows" %}

Download Emacs-26.3 from the [GNU repository](http://ftp.gnu.org/gnu/emacs/windows/emacs-26) and extract the zip file to `%AppData%/local/Programs/emacs`.

Alternatively, if you are using the [Chocolatey package manager](https://chocolatey.org/) then install [Emacs version 26](https://chocolatey.org/packages/emacs)

Add the Emacs directory to the PATH variable in your user account environment variables.

To start Emacs run the command `runemacs.exe`.  You can also pin this to the start menu or task bar.

> ####Hint::Access to common Unix tools
> Command line tools, such as `diff`, are used by Emacs.  To have these command line tools available in Windows, install Emacs as above but then run emacs from a Unix shell such as [GitBash](https://git-scm.com/).


{% content "msys2" %}

Install Emacs (64bits build) with the following:

```
pacman -S mingw-w64-x86_64-emacs
```


{% endtabs %}
<!-- End of  -->
