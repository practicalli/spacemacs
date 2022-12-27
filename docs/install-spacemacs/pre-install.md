# Pre-install

Spacemacs is a configuration for Emacs, so naturally [Emacs](#install-emacs) should be installed before Spacemacs can be used.

[Clojure CLI](#install-clojure-cli) should be installed to support Clojure development, along with several supporting development tools.

[Command Line Tools](#command-line-tools) support searching for files and spell checking.



## Install Emacs

![GNU Emacs logo](https://raw.githubusercontent.com/practicalli/graphic-design/live/logos/emacs-icon.svg){align=right loading=lazy}

Emacs 28 is recommended as it includes native compilation support and optomised JSON support which is valuable for Language Server Protocol servers.

Emacs is available for Linux, MacOSX and Windows.  The [Spacemacs Readme suggested ways to install Emacs](https://github.com/syl20bnr/spacemacs/tree/develop#emacs)

??? INFO "Emacs Version 28 recommended"
    Emacs 28 is recommended with native compilation of Elisp, which can have a significant improvement on Emacs package performance.
    Emacs 27.1 is the minimum version supported by Practicalli Spacemacs


=== "Ubuntu / Debian"
    `apt-cache show emacs` to check available versions of Emacs in the Ubuntu package manager. If version 28 is available, install Emacs using the Ubuntu package manager.

    ```bash
    sudo apt install emacs
    ```

    Additional versions of Emacs are available via the [Ubuntu Emacs Team Personal Package Archive](https://launchpad.net/~ubuntu-elisp/+archive/ubuntu/ppa).

    `sudo apt install emacs-snapshot` package to use the latest nightly build of Emacs, although be aware that some things may break.


    ??? HINT "Build Emacs 28 from source"
        [Building Emacs 28 from source code on Ubuntu](https://practical.li/blog/posts/build-emacs-28-on-ubuntu/) is relatively straight forward task, although it will take a little time to compile.  Building Emacs allows customisation of some features, such as native compilatin of elisp to enhance the performance of Emacs.


=== "Homebrew / MacOSX"
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


=== "Windows"
    Download Emacs-28.2 from the [GNU repository](http://ftp.gnu.org/gnu/emacs/windows/emacs-26) and extract the zip file to `%AppData%/local/Programs/emacs`.

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

![Clojure logo](https://raw.githubusercontent.com/practicalli/graphic-design/live/logos/clojure-logo.svg){align=right loading=lazy}

[Practicalli Clojure Install Guide](https://practical.li/clojure/clojure-cli/install/java.html){target=_blank .md-button }

Clojure CLI provide a simple and configurable way to:

* Run Clojure programs and tools
* Run an interactive REPL (Read-Eval-Print Loop) and evaluate Clojure expressions, usually with a [Clojure aware editor](/clojure-editors/)
* Managing dependencies (via tools.deps) from Maven and Git repositories

Using community tools on top of Clojure CLI tools provides tasks to create, develop, build and deploy Clojure applications and services

Follow the [Practicalli Clojure Install Guide](https://practical.li/clojure/clojure-cli/install/java.html) to install Clojure and supporting tools.


## Command Line Tools

![Command Line icon](https://raw.githubusercontent.com/practicalli/graphic-design/live/icons/terminal-emulator-green-screen.svg){align=right loading=lazy}

Emacs uses several external command line tools.  There are some very efficient search tools that are recommended (ripgrep, silver searcher).

Consider installing these tools to enhance your Spacemacs experience.


### spell check

[spell-checking layer](https://develop.spacemacs.org/layers/+checkers/spell-checking/README.html) in Spacemacs supports ispell, hunspell, and aspell command line tools. Aspell is the recommended spell checking tool.

=== "Ubuntu / Debian"
    Aspell binary is usually installed on Unix systems by default.  Use `sudo apt instal aspell` if not already present.

=== "Homebrew"
    `brew install aspell`

=== "Manual"
    [Aspell Install](http://aspell.net/){ .md-button target=_blank}


### Text search

Search text buffers uses an external search tool. Although grep is available in most operating systems, ripgrep (rg) or silver-searcher (ag) offer far greater performance and have more search options.

`dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")` in the Spacemacs configuration defines the order of preference for the search tool to use.

[ripgrep (rg)](https://github.com/BurntSushi/ripgrep){ .md-button target=_blank}
[Silver Searcher (ag)](https://github.com/ggreer/the_silver_searcher){ .md-button target=_blank}


### Find files

++spc++ ++"p"++ opens the projectile menu for finding files relative to the current project.  Projectile uses the external command line tool `find` to index files that are not part of a version controlled project (using `git` for projects versioned with Git).

`fd` is an external command line binary that is faster than the `find` command.  If installed, projectile will automatically use `fd` instead of `find`

[fd install instructions by operating system ](https://github.com/sharkdp/fd#installation){ .md-button target=_blank}


### helm-locate

The `locate` binary is used by ++spc++ ++"f"++ ++l++ (`helm-locate`) to find files and directories on the operating system file space.

`helm-locate` is the fastest way to search for files across the whole file space on your computer as it uses the updatedb database.  If a file was very recently added to the file system, run `sudo updatedb` to ensure all files are in the database.

=== "Ubuntu / Debian"
    ```shell
    sudo apt install locate
    ```

=== "Homebrew / MacOSX"
    [findutils Homebrew findutils](https://formulae.brew.sh/formula/findutils){ .md-button target=_blank}
    ```shell
    brew install findutils
    ```
