# Managing Library Dependencies - Leiningen only

> #### Hint::Restart the REPL when adding new libraries
> The following techniques may work for specific projects, although hot-loading libraries into a running REPL has been problematic.  Hot loading has been disabled in some versions of Cider due to bugs.

Update project dependencies using `clj-refactor` on your `project.clj` configuration file.

* `ap` - Add a project dependency (library) - required REPL restart
* `up` - Update the project dependency versions
* `sp` - Sort project dependencies

> If you are adding libraries as dependencies then you may wish to [refactor the relevant namespace](manage-namespaces.md), as shown in the next section.

## `ap` Add project dependency
 `, r a p` to search a library and add a specific version of that library to your project dependencies, without having to browse [clojars.org](https://clojars.org) separately.

A selected library version is added to the dependency vector of the Leiningen `project.clj` file.

![](/images/add-project-dependency.gif)

When this function is called with a prefix, `C-u`, the artifact cache is refreshed synchronously.

<!-- > The variable `cljr-hotload-dependencies` defaults to `true` and determines if new dependencies should be hotloaded or not. -->


## `up` Update project dependency versions
`, r u p` to update the version for each library in your Leiningen dependency configuration.

Alternatively you can use [lein-ancient](https://clojars.org/lein-ancient) plugin to update dependencicollections.mdes in your project.

> #### Hint::deps.edn projects
> [`practicalli/clojure-deps-edn`](http://practicalli.github.io/clojure/clojure-tools/install/install-clojure.html#clojure-cli-tools-common-aliases) contains an `:update` alias that uses depot to update `deps.edn` projects


# `sp` Sort project dependencies
`, r s p` in the `project.clj` buffer to alphabetically sort the library names in the project `:dependencies` configuration.

![](/images/clj-refactor-sort-project-dependencies.gif)
