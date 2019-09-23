# Batch Linting

> #### TODO::work in progress, sorry

squiggly can be used to provide live linting for Eastwood and kibit, however, squiggly continually reloads your code and can cause issues especially if your code has side effects when continually reloaded.

Eastwood and kibit give a better experience when used in batch mode, either before push commits to a shared repository or with a CD/CI server.


## Quick usage

Eastwood can be run from

* [Clojure CLI tools - deps.edn](https://github.com/jonase/eastwood/blob/master/README.md#depsedn)
* [Leiningen](https://github.com/jonase/eastwood/blob/master/README.md#installation--quick-usage)
* [a REPL](https://github.com/jonase/eastwood/blob/master/README.md#running-eastwood-in-a-repl).


## deps.edn

Define an alias for the Eastwood library and namespace.

```clojure
{:aliases
  {:eastwood
      {:main-opts ["-m" "eastwood.lint" {:source-paths ["src"]}]
       :extra-deps {jonase/eastwood {:mvn/version "RELEASE"}}}}}

```

Run Clojure with the `eastwood` alias to lint your project

```sh
$ clj -A:eastwood
```

 An example output is as follows:

```shell
== Eastwood 0.2.4 Clojure 1.9.0-alpha16 JVM 1.8.0_31
Directories scanned for source files:
  src test
== Linting app.routes.users ==
src/app/routes/users.clj:133:43: suspicious-expression: -> called with 1 args.  (-> x) always returns x.  Perhaps there are misplaced parentheses?
src/app/routes/users.clj:115:3: constant-test: Test expression is always logical true or always logical false: true in form (if true (do (users/update-user-password {:hash (:id params), :pass (:pass params)}) (ok)) (bad-request))
== Linting app.routes.login ==
== Linting app.helpers.helpers ==
== Linting app.routes.inbox ==
== Linting app.middleware ==
```

You can see from the example output that Eastwood found an issue with users.clj line 133.

The issue is that there’s a suspicious expression: specifically, we’re threading x into nothing.

Seems like a good thing for us to clean up! Below that, you’ll see that our if expression is always checking against true. Specifically, because our code is (if true ... ...). It looks like this was probably added as a quick solution, and I wouldn’t be surprised to find a TODO above that expression. Regardless, that’s an example of how to use Eastwood to help lint your Clojure code.



> #### TODO::Using Eastwood with a CD/CI server - eg. CircleCI
> Clojure CLI tools - run clojure with the alias
> reject a build if Eastwood finds issues with your code
> feedback recommendations from kibit
