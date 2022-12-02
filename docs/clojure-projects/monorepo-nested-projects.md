# Monorepo and nested projects
A [monorepo](https://en.wikipedia.org/wiki/Monorepo) is a collection related project directories within one source control repository.

As the monorepo root is not the root of a Clojure project, `SPC p a` the `projectile-toggle-between-implementation-and-test` does not know the type of project.  A `.dir-locals.el` configuration file can be used to define the type of projects the monorepo contains.

`SPC p e` creates a `.dir-locals.el` file in the root of the project.

Type `projectile-project-type` and select that configuration option.

Type `clojure-cli` for the value (or `lein-test` for Leiningen projects)

`SPC f s` to save the file.

The `.dir-locals.el` file should now contain the following

```elisp
((clojure-mode . ((projectile-project-type . clojure-cli))))
```

[practicalli/exercism-clojure-guides](https://github.com/practicalli/exercism-clojure-guides) is an example of a monorepo.


> #### Hint::Clojure project types
> `clojure-cli` works for Clojure CLI projects and `lein-test` for Leiningen project.  If you have mixed projects, use `clojure-cli` and place a `deps.edn` file containing an empty hash-map, `{}`.  Select Leiningen when running the `cider-jack-in-*` commands.
>
> Clojure project types for projectile are define in [projectile.el of the projectile project](https://github.com/bbatsov/projectile/blob/master/projectile.el#L2670-L2683).
