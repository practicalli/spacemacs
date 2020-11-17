![Practicalli Spacemacs - Clojure install banner](https://raw.githubusercontent.com/practicalli/graphic-design/master/practicalli-spacemacs-clojure-install-banner.png)

Establish a Clojure environment by installing the following tools:

| Tools                 | Required    | Purpose                                                    |
|-----------------------|-------------|------------------------------------------------------------|
| Clojure CLI tools     | Essential   | Run Clojure REPL for development and production            |
| Aliases for CLI tools | Recommended | Additional tools to enhance Clojure development experience |
| clj-kondo             | Recommended | Static analysis of code to find all those little bugs      |
| rlwrap                | Optional    | A simple read line for command history, only used by `clj` |

> #### Hint::Aliases provided by practicalli/clojure-deps-edn
> [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) provides a user wide configuration of over 30 aliases to support Clojure devlopment.  These aliases use meaningful names to avoid clashes with project specific aliases, ensuring that the user wide aliases remain available in all projects.


## Clojure CLI tools
Clojure CLI tools provides the simplest way to run the Clojure REPL and Clojure projects.

<!-- Operating System specific instructions -->
{% tabs linux="Linux Script", homebrew="Homebrew", windows="Windows" %}

<!-- Ubuntu install -->
{% content "linux" %}

Use the Linux script installer from [Clojure.org](https://clojure.org/guides/getting_started#_installation_on_linux)

```shell
curl -O https://download.clojure.org/install/linux-install-1.10.1.727.sh
chmod +x linux-install-1.10.1.727.sh
sudo ./linux-install-1.10.1.727.sh
```

> If required, install `curl` using `sudo apt install curl`

The installation creates `/usr/local/bin/clojure`, `/usr/local/bin/clj` wrapper and `/usr/local/lib/clojure` directory.


<!-- Homebrew (MacOSX) install -->
{% content "homebrew" %}

With [Mac OSX Homebrew](https://brew.sh/) or [Homebrew on Linux or Windows with WSL](https://docs.brew.sh/Homebrew-on-Linux) installed.

Open a terminal window and run the `brew` command line to install Clojure from the official clojure/tools tap:

```shell
brew install clojure/tools/clojure
```

<!-- Windows install with scoop.sh -->
{% content "windows" %}
For Windows 10 use [Windows Subsystem for Linux and Windows Terminal are recommended](https://conan.is/blogging/clojure-on-windows.html) if you have administrative privileges and are happy to use a Unix system on the command line.

For earlier versions of Windows use [scoop.sh](https://scoop.sh/) is a command line installer for windows and is the recommended approach.  [Powershell 5](https://aka.ms/wmf5download) or greater is required.

Follow the [scoop-clojure install instructions](https://github.com/littleli/scoop-clojure), summarized here:

```shell
scoop install git
scoop bucket add java
scoop bucket add scoop-clojure https://github.com/littleli/scoop-clojure
scoop install adoptopenjdk-lts-hotspot
scoop install clojure
scoop update clojure
```

To also use scoop to install clj-kondo

```shell
scoop bucket add extras

scoop install clj-kondo
```

> An early release version of [clj on Windows is available](https://github.com/clojure/tools.deps.alpha/wiki/clj-on-Windows).

{% endtabs %}
<!-- End of Operating System specific instructions -->

## Clojure CLI tools and common aliases
[practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn) contains aliases for a number of community tools that support the Clojure development workflow.

Clone repository to `~/.clojure/`, using a fork if you wish to maintain your own aliases

```shell
git clone git@github.com:practicalli/clojure-deps-edn.git ~/.clojure/
```

All tools are provided via libraries and installed on first use, or if library versions are updated.

If using your own `~/.clojure/deps.edn` then add an alias for the [clj-new tool](https://github.com/seancorfield/clj-new#getting-started) as this is extensively used in this guide.


## clj-kondo static analyser / linter
[clj-kondo](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md) will greatly enhance the joy of coding in Clojure by keeping your code idiomatic and free from a wide range of syntax bugs.  It performs static analysis on Clojure, ClojureScript and EDN, without the need of a running REPL.

Follow the [clj-kondo install guide](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md) for your operating system.

[Spacemacs integration](https://github.com/borkdude/clj-kondo/blob/master/doc/editor-integration.md#spacemacs) requires the `syntax-checking` layer and the `clojure-enable-linters` variable added to the clojure layer, within the `dotspacemacs-configuration-layers` of the `.spacemacs` file.

`SPC f e d` opens the `.spacemacs` file

`SPC s s dotspacemacs-configuration-layers RET` to jump to that section of the file

Add `clojure-enable-linters` variable to the clojure layer

```elisp
(clojure :variables
             clojure-enable-linters 'clj-kondo)
```

Add the `syntax-checking` layer

`SPC f s` to save and `SPC q r` to restart Emacs and download any additional packages.

clj-kondo has sensible default configuration, however its simple to [add your own configuration](https://github.com/borkdude/clj-kondo/blob/master/doc/config.md)


## Optional: rlwrap readline
Install the `rlwrap` binary to support the `clj` wrapper, which launches a basic repl with command history.  This approach is not as useful as using [rebel readline](/repl-driven-development/rebel-readline/).

`rlwrap` is available with most Linux systems and install instructions should be found by searching for rlwrap in a web browser.
