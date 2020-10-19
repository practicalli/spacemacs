# Create a Clojure Project
Clojure projects can be generated from templates using one of the Clojure build tools (Clojure CLI, Leiningen or Boot).

`SPC '` opens a popup buffer containing an eshell terminal.  Or you can open a terminal window from your operating system.

{% tabs clojurecli="Clojure CLI", leiningen="Leiningen" %}

<!-- Tools deps project with clj-new -->
{% content "clojurecli" %}

Create a new project with Clojure CLI, using the `app` template and a project called practicalli/playground

```shell
clojure -M:project/new app practicalli/playground
```

![Spacemacs - Clojure CLI create project - Eshell ](/images/spacemacs-clojure-create-a-project-clojure-cli-eshell.png)

> #### Hint::Clojure CLI and clj-new required?
> See the [install Clojure section](/before-you-start/install-clojure.html) for details

<!-- Leiningen Project -->
{% content "leiningen" %}

Create a new project with Leiningen, using the lib template and a project called playground

```shell
lein new lib playground
```

> #### Hint::Leiningen build tool required?
> See [Leiningen](/alternative-tooling/leiningen.html) for details

{% endtabs %}
<!-- End of  -->


## Adding files to your project

See the section on [adding a new file](adding-files.html) when you need to add more namespaces to your project.
