# Install Clojure
Establish a Clojure environment by installing the following:
* rlwrap, a read line tool for an interactive command line
* Clojure CLI tools to run the REPL and projects (Leiningen and Boot should also work)
* clj-new to create projects from templates
* clj-kondo to lint your code and show syntax errors / idioms as you type

## Clojure CLI tools
Clojure CLI tools provides the simplest way to run the Clojure REPL and Clojure projects.

<!-- Operating System specific instructions -->
{% tabs linux="Linux Script", homebrew="Homebrew", windows="Windows(powershell)" %}

<!-- Ubuntu install -->
{% content "linux" %}
Install the `rlwrap` package to add readline support for the `clj` command line.

Use the Linux script installer from [Clojure.org](https://clojure.org/guides/getting_started#_installation_on_linux)

```shell
sudo apt install curl rlwrap

curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh
chmod +x linux-install-1.10.1.536.sh
sudo ./linux-install-1.10.1.536.sh
```

The installation creates `/usr/local/bin/clj`, `/usr/local/bin/clojure`, and `/usr/local/lib/clojure`

<!-- Homebrew (MacOSX) install -->
{% content "homebrew" %}

With [Mac OSX Homebrew](https://brew.sh/) or [Homebrew on Linux or Windows with WSL](https://docs.brew.sh/Homebrew-on-Linux) installed.

Open a terminal window and run the following command line to install Clojure from the official clojure/tools tap:

```shell
brew install clojure/tools/clojure
```

<!-- Windows install -->
{% content "windows" %}
An early release version of [clj on Windows is available](https://github.com/clojure/tools.deps.alpha/wiki/clj-on-Windows).


{% endtabs %}
<!-- End of Operating System specific instructions -->


## Clojure CLI - additional tools
Fork and clone the [practicalli/clojure-deps-ed](https://github.com/practicalli/clojure-deps-edn)) to `~/.clojure`

```
;; fork on GitHub to version your own configuration
git clone git@github.com:your-fork/clojure-deps-edn.git ~/.clojure
```

Or edit `~/.clojure/deps.edn` and add the alias called `:new` to create new Clojure projects from templates.

```clojure
  :new
  {:extra-deps {seancorfield/clj-new {:mvn/version "1.0.199"}}
   :main-opts  ["-m" "clj-new.create"]}
```


## Install clj-kondo lint tool
[clj-kondo](https://github.com/borkdude/clj-kondo) performs static analysis on Clojure, ClojureScript and EDN, without the need of a running REPL. It informs you about potential errors while you are typing.

Install the [clj-kondo binary](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md#installation-script-macos-and-linux).  `clj-kondo --version` should run in a terminal shell.

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


## Babashka Clojure Scripting (optional)
[Babashka](https://github.com/borkdude/babashka#installation) is a command line shell that runs Clojure scripts, an alternative to Bash scripting.  As [Babashka](https://github.com/borkdude/babashka#installation) runs Clojure it can also be used from Spacemacs by starting an nrepl service and using `cider-connect-clj`

```shell
bb -nrepl
```

[Babashka install guide](https://github.com/borkdude/babashka#installation)
