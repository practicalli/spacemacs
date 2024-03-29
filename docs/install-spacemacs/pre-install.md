# Pre-install

Spacemacs is a configuration for Emacs, so naturally [Emacs](#install-emacs) should be installed before Spacemacs can be used.

[Clojure CLI](#install-clojure-cli) should be installed to support Clojure development, along with several supporting development tools.

[Command Line Tools](#command-line-tools) support searching for files and spell checking.


## Install Emacs

![GNU Emacs logo](https://raw.githubusercontent.com/practicalli/graphic-design/live/logos/emacs-icon.svg){align=right loading=lazy style="height:64px;width:64px"}

Emacs is available for Linux, MacOSX and Windows.  The [Spacemacs Readme suggested ways to install Emacs](https://github.com/syl20bnr/spacemacs/tree/develop#emacs)

??? INFO "Emacs Version 29 recommended"
    Emacs 29.x is the current stable release and includes optomised JSON support which is valuable for Language Server Protocol servers.  Native compilation is also supported, although this is still a relatively new approach so there may be issues.


=== "Debian Packages"
    `apt-cache show emacs` to check available versions of Emacs in the Ubuntu package manager. If version 29 is available, install Emacs using the Ubuntu package manager.

    ```bash
    apt install emacs
    ```

    !!! INFO "vterm compile packages"
        vterm is compiled during the package install when first starting Spacemacs with the Practicalli Spacemaca Config.
        
        Install packages to support compile of vterm
        ```shell
        apt install cmake libvterm-bin libtool-bin
        ```
    
    ??? HINT "Emacs snapshot packages built from source"
        [Ubuntu Emacs Lisp team Personal Package Archive](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa){target=_blank} provides daily snapshot Emacs packages build from the latest changes commited to the Emacs source code repository.  

        Installing a snapshot package essentially installs the unreleased version of Emacs, e.g. Emacs 30.

        `apt install emacs-snapshot` package to use the latest nightly build of Emacs, although be aware that some things may break.

    ??? HINT "Build Emacs 29 from source"
        [Building Emacs 29 from source code on Ubuntu](https://practical.li/blog/posts/build-emacs-from-source-on-ubuntu-linux/){target=_blank} is relatively straight forward task, although it will take a little time to compile.  Building Emacs allows customisation of some features, such as native compilatin of elisp to enhance the performance of Emacs.


=== "Homebrew"
    [Emacs Plus](https://github.com/d12frosted/homebrew-emacs-plus){target=_blank} from Homebrew provides many options, including native compilation and Spacemacs Icon for application launchers.

    ```
    brew tap d12frosted/emacs-plus
    brew install emacs-plus@29 --with-spacemacs-icon
    ```
    Or install with native compilation support
    ```
    brew tap d12frosted/emacs-plus
    brew install emacs-plus@29 --with-native-comp --with-spacemacs-icon
    ```

    Emacs.app is installed to: `/usr/local/opt/emacs-plus@28`

    Optionally run Emacs plus as a service
    ```
    brew services start d12frosted/emacs-plus/emacs-plus@28
    ```

    Run `emacs`

    > If Ntative Compilation option was included, take a break whilst Emacs compiles all the things.

    > The [Spacemacs README lists other options for MacOSX](https://github.com/syl20bnr/spacemacs#macos){target=_blank}.


=== "Windows"
    [Download Emacs 29 zip](http://ftp.gnu.org/gnu/emacs/windows/emacs-29/){target=_blank} archive from the [GNU repository for Windows](http://ftp.gnu.org/gnu/emacs/windows/){target=_blank} and extract the zip file to `%AppData%/local/Programs/emacs`.

    Alternatively, if you are using the [Chocolatey package manager](https://chocolatey.org/){target=_blank} then install [Emacs version 28](https://chocolatey.org/packages/emacs){target=_blank}

    Add the Emacs directory to the `PATH` variable in your user account environment variables.

    To start Emacs run the command `runemacs.exe`.  You can also pin this to the start menu or task bar.

    ??? HINT "Access to common Unix tools"
        Command line tools, such as `diff`, are used by Emacs.  To have these command line tools available in Windows, install Emacs as above but then run emacs from a Unix shell such as [GitBash](https://git-scm.com/){target=_blank}.


=== "Msys2"
    Install Emacs (64bits build) with the following:

    ```
    pacman -S mingw-w64-x86_64-emacs
    ```


## Install Clojure CLI

![Clojure logo](https://raw.githubusercontent.com/practicalli/graphic-design/live/logos/clojure-logo.svg){align=right loading=lazy style="height:64px;width:64px"}

[Practicalli Clojure Install Guide](https://practical.li/clojure/install/){target=_blank .md-button}

Clojure CLI provide a simple and configurable way to:

* Run Clojure programs and tools
* Run an interactive REPL (Read-Eval-Print Loop) and evaluate Clojure expressions, usually with a [Clojure aware editor](https://practical.li/clojure/clojure-editors/){target=_blank}
* Managing dependencies (via tools.deps) from Maven and Git repositories

Using community tools on top of Clojure CLI tools provides tasks to create, develop, build and deploy Clojure applications and services

Follow the [Practicalli Clojure Install Guide](https://practical.li/clojure/install/){target=_blank} to install Clojure and supporting tools.


## Command Line Tools

![Command Line icon](https://raw.githubusercontent.com/practicalli/graphic-design/live/icons/terminal-emulator-green-screen.svg){align=right loading=lazy}

Emacs uses several external command line tools.  There are some very efficient search tools that are recommended (ripgrep, silver searcher).

Consider installing these tools to enhance your Spacemacs experience.


### spell check

[spell-checking layer](https://develop.spacemacs.org/layers/+checkers/spell-checking/README.html){target=_blank} in Spacemacs supports ispell, hunspell, and aspell command line tools. Aspell is the recommended spell checking tool.

=== "Debian Packages"
    Aspell binary is usually installed on Unix systems by default.  Use `apt instal aspell` if not already present.

=== "Homebrew"
    `brew install aspell`

=== "Manual"
    [Aspell Install](http://aspell.net/){.md-button target=_blank}


### Text search

Search text buffers uses an external search tool. Although grep is available in most operating systems, ripgrep (rg) or silver-searcher (ag) offer far greater performance and have more search options.

`dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")` in the Spacemacs configuration defines the order of preference for the search tool to use.

[ripgrep (rg)](https://github.com/BurntSushi/ripgrep){.md-button target=_blank}
[Silver Searcher (ag)](https://github.com/ggreer/the_silver_searcher){.md-button target=_blank}


### Find files

++spc++ ++"p"++ opens the projectile menu for finding files relative to the current project.

Projectile uses the external command line tool `find` to index files that are not part of a version controlled project (using `git` for projects versioned with Git).

`fd` is an external command line binary that is faster than the `find` command.  If installed, projectile will automatically use `fd` instead of `find`

[fd install instructions by operating system ](https://github.com/sharkdp/fd#installation){.md-button target=_blank}


### helm-locate

The `locate` binary is used by ++spc++ ++"f"++ ++l++ (`helm-locate`) to find files and directories on the operating system file space.

`helm-locate` is the fastest way to search for files across the whole file space on your computer as it uses the updatedb database.  Run `updatedb` to ensure all files are in the database, especially very recent changes.

=== "Debian Packages"
    ```shell
    apt install locate
    ```

=== "Homebrew"
    [findutils Homebrew findutils](https://formulae.brew.sh/formula/findutils){.md-button target=_blank}
    ```shell
    brew install findutils
    ```
