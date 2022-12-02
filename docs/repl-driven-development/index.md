# REPL Driven Development

Clojure is a powerful, fun and highly productive language for developing applications and services.  The clear language design is supported by a powerful development environment known as the REPL (read, evaluate, print, loop).  The REPL gives you instant feedback on what your code does and enables you to test either a single expression or run the whole application (including tests).

The approach I take is called REPL driven development and I'll explain that here in detail.


## Always running a REPL

As soon as I open a Clojure file I will start the REPL.  Coding without a REPL feels like tying my hands behind my back.  I want to get fast feedback from my code as I design it, testing my assumptions and design choices.

<!-- TODO: short video showing code evaluated in the REPL - replace image below -->
<!-- ![Spacemacs Clojure REPL buffer powerbar](/images/spacemacs-clojure-repl-buffer-powerbar.png) -->


## Evaluating source code

Use Clojure source code buffers to evaluate code and display the results inline, `, e f`.

Source code is evaluated in its respective namespace, removing the need to change namespaces in the REPL directly, (`in-ns`), or use fully qualified names to call functions.

<!-- TODO: short video showing code evaluated in the REPL - replace image below -->

> #### Hint:: Evaluate to Comment for results history
> `, e ;` (`cider-eval-defun-to-comment`) evaluates the current form and prints the result under the expression as a comment
>
> Adding result comment is an effective way to show the expected results of the code design, especially as a journal.


## Design Journal

A journal of design decisions make the code easier to understand and maintain.  Design decisions and alternative design discussions and examples are captured, reducing the time spent revisiting those discussions.

Journals simplify the developer on-boarding processes as the journey through design decisions are already documented.

A Design Journal is usually created in a separate namespace, although it may start as a rich comment at the bottom of a namespace.  The journal should cover

* important REPL experiments used to create the resulting namespace code
* discussions of design choices, including those not taken and why they were not relevant
* expressions that when evaluated explain how a function or parts of a function should work

The design journal can be used to create meaningful documentation for the project very easily and should prevent time spent on repeating exactly the same conversations.

> #### HINT::Add example journal
> [Design Journal for Tic-Tac-Toe game using reagent, clojurescript and scalable vector graphics](https://github.com/jr0cket/tictactoe-reagent/blob/master/src/tictactoe_reagent/core.cljs#L124)


## Viewing data structures

`, e p` menu to Pretty Print data structure results when evaluating code.  Pretty print shows the structure of the data in a human readable form, making it easier to see incorrect results.

`, d v` is the Cider Inspect menu that will page through very large data sets and navigate through a nested data structures in detail.

![Clojure - viewing large data sets](/images/spacemace-clojure-inspect-java-lang-persistentvector.png)

`, d` is the Cider debug menu which can inspect view intermediate values and data structures during the debugging of Clojure function calls.

Spacemacs can also be used with [external data browsers]({{ book.P9IClojure }}clojure-tools/data-browsers/reveal.md) ([Clojure inspector]({{ book.P9IClojure }}clojure-tools/data-browsers/clojure-inspector.md), [Reveal]({{ book.P9IClojure }}clojure-tools/data-browsers/reveal.md), [Portal]({{ book.P9IClojure }}clojure-tools/data-browsers/portal.md)) provide effective ways to navigate through a nested data structures and large data sets.

> [Cognitect REBL]({{ book.P9IClojure }}alternative-tools/clojure-cli/cognitect-rebl.html) is a commercial inspect tool designed to aid working with Datomic.


## Idiomatic Clojure and code Style

Continuous linting significantly reduces a wide range of bugs and syntax errors as they happen, speeding up the development process.

[clj-kondo](https://github.com/borkdude/clj-kondo) is a Clojure project that provides continuous analysis of the source code, checking for common idioms as well as syntax issues (linting).

The [Clojure Style guide](https://github.com/bbatsov/clojure-style-guide) provides examples of common formatting approaches, although the development team should decide which of these to adopt.  Emacs `clojure-mode` will automatically format code and so will Clojure LSP (via cljfmt).  These tools are configurable and should be tailored to the teams standard.


## Test Driven Development and REPL Driven Development

You can use TDD and RDD together, there is a very natural merging of these approaches as they both encourage incremental changes and continuous feedback.  Test Driven Development also works well with Hammock Time, as you should spend more time thinking about what you want to do than typing code.  Tests provide an easy way to define and test your assumptions of your well considered design

With the power of the REPL, it is easy to get feedback on exactly how your code works.  Tests provide the codification of your evolving design and give you feedback when you break that design.

![Clojure REPL Driven Development and Test Driven Development](https://raw.githubusercontent.com/practicalli/graphic-design/live/repl-tdd-flow.png)

At some point before production you should have unit tests around the public API of each namespace in your project to catch regressions before committed.  It is much more efficient in terms of thinking time to create these tests as you stabilise the design that as an after thought.  So it makes sense to write these tests as part of the design process.

> #### Hint::Automate local test runner
> Use [kaocha](https://github.com/lambdaisland/kaocha) test runner in watch mode to run tests and specification check automatically (when changes are saved)
>
```bash
clojure -X:test/watch
```

## Continuous Integration

Wire up a continuous integration server that runs tests and builds code on every shared commit (or every commit if you run a CI server locally).

Spin up testable deployments of your application or service based on pre-defined branch commits or every commit if you do not share branches (i.e. push to shared master or develop branch), eg. Heroku Pipelines.

> #### Hint::Tools
> CircleCI
> GitHub Actions
