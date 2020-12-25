# Recommended Command Line Tools
Emacs uses several external command line tools.  There are some very efficient search tools that are recommended (ripgrep, silver searcher).

Consider installing these tools to enhance your Spacemacs experience.

## Search tool
Searching in buffers or across projects used an external search tool and grep or awk are usually available in most operating systems by default.

ripgrep (rg) and silver-searcher (ag) are recommended as they are far more efficient and have more features.  Either tool is recommended over grep or awk.

ripgrep is recommended by Practicalli unless there is a specific feature you require that is only in silver searcher.

Spacemacs will use ripgrep over silversearcher if both are installed.  `dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")` in `.spacemacs` defines the search tool order of preference.

See the respective install guides for these tools:
* [ripgrep (rg)](https://github.com/BurntSushi/ripgrep)
* [The Silver Searcher (ag)](https://github.com/ggreer/the_silver_searcher)


## Finding files faster
`SPC p` opens the projectile menu for finding files relative to the current project.  Projectile uses the external command line tool `find` to index files that are not part of a version controlled project (using `git` for projects versioned with Git).

> Practicalli hasn't noticed any slowness in using Projectile, however, if you can to try to optimize `find` searches by installing `fd`.

`fd` is an external command line binary that is faster than the `find` command.  If installed, projectile will automatically use `fd` instead of `find`

Install the `fd` binary in your operating system by [following the relevant instructions](https://github.com/sharkdp/fd#installation).

No additional Emacs packages are required.


## Locate files with helm-locate
The locate binary is used by `SPC f L` (`helm-locate`) to find files and directories on the operating system filespace.

`helm-locate` is the fastest way to search for files across the whole file space on your computer as it uses the updatedb database.  If a file was very recently added to the file system, run `sudo updatedb` to ensure all files are in the database.

| Operating system                                       | Install                   |
|--------------------------------------------------------|---------------------------|
| Ubuntu / Debian                                        | `sudo apt install locate` |
| [Homebrew](https://formulae.brew.sh/formula/findutils) | `brew install findutils`  |


## spell check tool
The [spell-checking layer](https://develop.spacemacs.org/layers/+checkers/spell-checking/README.html) in Spacemacs supports ispell, hunspell, and aspell command line tools

Aspell is the recommended spell checking tool:
* [Aspell](http://aspell.net/) or `brew install aspell`

A spell checking binary is usually installed on Unix systems by default.


## Clojure Linter - clj-kondo
clj-kondo provides live linting when developing with the Clojure language and is highly recommended.

* [clj-kondo binary install guide](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md)

Use the [practcialli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration or see [Install Clojure section](install-clojure.md) for details on how to use clj-kondo with Spacemacs.


<!-- ## image library -->

<!-- libpng -->

<!-- warning in message buffer: _PNG warning: Interlace handling should be turned on when using png_read_image_ -->

<!-- libpng16-16 - already installed - still get warning message -->

<!-- Background -->
<!-- https://sourceforge.net/p/libpng/bugs/165/ -->
<!-- It just seems to be an incorrect warning based on how Emacs (or any app) is calling libpng. -->
