# Managing Library Dependencies

You can easily add and update project dependencies using `clj-refactor` on your `project.clj` configuration file.

* `ap` - Add a project dependency (library)
* `up` - Update the project dependency versions
* `sp` - Sort project dependencies
* `hd` - Hotloads a library into the running REPL (called by `ap`)

> If you are adding libraries as dependencies then you may wish to [refactor the relevant namespace](manage-namespaces.html), as shown in the next section.

## `ap` Add project dependency

Add a library to your project dependencies without having to browse [clojars.org](https://clojars.org) separately for available libraries and versions.

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r a p` | `M-RET r a p` | `C-c C-f a p` | `, r a p` |


This function will lookup libraries from clojars.org and maven central.  As you type the name of the library any matching library names are listed.  Once you select a library name, the available versions are listed.

The library is then added to the dependency vector of your Leiningen `project.clj`, or boot `build.boot` file.

Once the library is added as a dependency it is loaded into the REPL without having to restart (Hotloading).

![](/images/add-project-dependency.gif)

When this function is called with a prefix, `C-u`, the artifact cache is refreshed synchronously.

> The variable `cljr-hotload-dependencies` defaults to `true` and determines if new dependencies should be hotloaded or not.


## `up` Update project dependency versions

You can update the version for each library in your Leiningen dependency configuration.  Open the `project.clj` file and then run the `up` command

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r u p` | `M-RET r u p` | `C-c C-f u p` | `, r u p` |


> Alternatively you can use [lein-ancient](https://clojars.org/lein-ancient) plugin to update dependencicollections.mdes in your project.

Support for Boot projects is not currently available.


# `sp` Sort project dependencies

Sorts all the libraries, alphabetically by name, in your project dependencies configuration.

Open the `project.clj` file and run the command:

| Spacemacs     | Major mode    | Emacs         | Evil      |
|---------------|---------------|---------------|-----------|
| `SPC m r s p` | `M-RET r s p` | `C-c C-f s p` | `, r s p` |

The `project.clj` file is changed to list the libraries in the `:dependencies` in alphabetical order.

![](/images/clj-refactor-sort-project-dependencies.gif)


# `hd` Hotload dependency

Loads a specific library into the running REPL to avoid restarting.

As the command `cljr-add-project-dependency` hotloads the new dependency, this command is rarely required by itself

![clj-refactor hotload dependency](clj-refactor-hotload-dependency.gif)
