## Installing Emacs

[![GNU Emacs banner](/images/emacs-logo-text.png)](/images/emacs-logo-text.png)

Emacs is available for Linux, MacOSX and Windows.  The [Spacemacs Readme suggested ways to install Emacs](https://github.com/syl20bnr/spacemacs/tree/develop#emacs)

> ####Info::Emacs Version - 28.2 recommended
> Emacs 28.2 is recommended, especially when it includes native compilation of Elisp, which can have a significant improvement on Emacs package performance.
>
> Emacs 27.1 or greater should work correctly with ths guide

Here is a summary of the Emacs installation process for several operating system.

{% tabs ubuntu="Ubuntu", macosx="MacOSX", windows="Windows", msys2="MSYS2" %}

<!-- Ubuntu Install -->
{% content "ubuntu" %}

Emacs is available via the Ubuntu software manager.

`apt-cache show emacs` to check available versions of Emacs in the Ubuntu package manager.

If Emacs 27.1 or greater is available, install using the Ubuntu package manager.

```bash
sudo apt install emacs
```

Additional versions of Emacs are available via the [Ubuntu Emacs Team Personal Package Archive](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa).

`sudo apt install emacs-snapshot` package to use the latest nightly build of Emacs, although be aware that some things may break.


> ####HINT::Build Emacs 28 from source
> [Building Emacs 28 from source code on Ubuntu](https://practical.li/blog/posts/build-emacs-28-on-ubuntu/) is relatively straight forward, although will take a little time to compile.  Building Emacs allows customisation of some features, such as native compilatin of elisp to enhance the performance of Emacs.


<!-- MacOSX Install -->
{% content "macosx" %}

[Emacs Plus](https://github.com/d12frosted/homebrew-emacs-plus) from Homebrew provides many options, including native compilation and Spacemacs Icon for application launchers.

```
brew tap d12frosted/emacs-plus`
brew install emacs-plus@28 --with-native-comp --with-spacemacs-icon
```

Emacs.app is installed to: `/usr/local/opt/emacs-plus@28`

Optionally run Emacs plus as a service
```
brew services start d12frosted/emacs-plus/emacs-plus@28
```

Run `emacs`

Get a hot cup of something as Emacs native compilation compiles all the things.


> The [Spacemacs README lists other options for MacOSX](https://github.com/syl20bnr/spacemacs#macos).


<!-- Windows Install -->
{% content "windows" %}

Download Emacs-28.2 from the [GNU repository](http://ftp.gnu.org/gnu/emacs/windows/emacs-26) and extract the zip file to `%AppData%/local/Programs/emacs`.

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
