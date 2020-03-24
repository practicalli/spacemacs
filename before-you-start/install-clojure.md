# Install Clojure

Establish a Clojure environment by installing the following:

* rlwrap, a read line tool for an interactive command line
* Clojure CLI tools (Leiningen and Boot should also work)
* clj-new to create projects

## Clojure CLI tools

<!-- Operating System specific instructions -->
{% tabs linux="Linux", homebrew="Homebrew", windows="Windows" %}

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

Use [Homebrew on Linux or Windows with WSL](https://docs.brew.sh/Homebrew-on-Linux)

Install the command line tools with brew from the clojure/tools tap:

```shell
brew install clojure/tools/clojure
```

<!-- Windows install -->
{% content "windows" %}

An early release version of [clj on Windows is available](https://github.com/clojure/tools.deps.alpha/wiki/clj-on-Windows).


{% endtabs %}
<!-- End of Operating System specific instructions -->


## Install clj-new

Save the [practicalli/deps-edn-examples deps.edn file](https://github.com/practicalli/deps-edn-examples/blob/master/deps.edn) to `~/.clojure/deps.edn`

Or edit `~/.clojure/deps.edn` and add an alias called new that runs the `clj-new` project.

```clojure
  :new
  {:extra-deps {seancorfield/clj-new {:mvn/version "0.8.6"}}
   :main-opts  ["-m" "clj-new.create"]}
```
