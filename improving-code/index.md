# Improving Clojure code

> #### TODO::Work in progress

Clojure can be kept consistently easy to read and idiomatic by using a few additional tools

| Tool            | Description                       |
|-----------------|-----------------------------------|
| Linter          | Reports on code errors            |
| Static analyser | Suggests idiomatic use of Clojure |
| Formatter       | Formats the code for readability  |


## Linting
Common linting tools includes

* [Joker](https://github.com/candid82/joker) - standalone tool, simple to use, not Clojure complete though.
* [Eastwood](https://github.com/jonase/eastwood) - leiningen plugin
    * [squiggly-clojure](https://github.com/clojure-emacs/squiggly-clojure) to run Eastwood automatically from Emacs (repeatedly reloads your code in the repl, so need to ensure your code is happy with that).


## Static analyser

Kibit is a commonly used static analyser for Clojure projects, suggesting changes to the code it analyses to make it more idiomatic.


## Formatting

A consistent format of your code base makes it much more readable and therefore understandable by the development team.
