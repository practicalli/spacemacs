# Idiomatic code with Kibit

kibit is a static code analyzer for Clojure, ClojureScript, cljx and other Clojure variants. It uses core.logic to search for patterns of code that could be rewritten with a more idiomatic function or macro. For example if kibit finds the code


```clojure
(defproject project-name "0.0.1"
  :description "Eastwood Sample Project"
  :license "Eclipse Public License 1.0"
  :url "http://www.bradcypert.com"
  :dependencies [[org.clojure/Clojure "1.10.1"]]
  :plugins [[lein-tar "3.2.0"]
            [jonase/eastwood "0.2.4"]
            [lein-kibit "0.1.5"]])
```

`lein kibit` in a terminal will run the analysis on your project and output recommendations

```shell
At /Users/brad/Projects/podcasts/app/src/app/db/processors.clj:14:
Consider using:
  (update-in podcast [:feed] podcast-service/parse-feed)
instead of:
  (assoc podcast :feed (podcast-service/parse-feed (:feed podcast)))

At /Users/brad/Projects/podcasts/app/src/app/db/processors.clj:30:
Consider using:
  (when (not exists?)
    (doall
      (map
        (partial notifications/new-episode podcast episode)
        subscribed-users)))
instead of:
  (if (not exists?)
    (doall
      (map
        (partial notifications/new-episode podcast episode)
        subscribed-users))
    nil)

At /Users/brad/Projects/podcasts/app/src/app/modules/auth.clj:17:
Consider using:
  (if-not (some nil? [item source]) (hashers/check item source) false)
instead of:
  (if (not (some nil? [item source])) (hashers/check item source) false)
```

Kibit will scan your code and check it against idiomatic code patterns (using `core.logic`) and recommend how to simplify and reduce your code complexity.

The output excerpt shows two different suggestions: Simplifying an `if` to a `when` and condensing an `if` and `not` to an `if-not`.

`lein kibit --replace` will fix these issues for you.

`lein kibit --replace --interactive` will automatically walk you through each recommendation and ask if want to use it.



> #### TODO::Using Kibit with a CD/CI server - eg. CircleCI
> reject a build if Kibit finds issues with your code
> automatically apply and commit recommendations from kibit into a Pull Request
