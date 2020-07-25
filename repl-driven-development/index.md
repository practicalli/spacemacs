# REPL Driven Development

Clojure is a powerful, fun and highly productive language for developing applications and services.  The clear language design is supported by a powerful development environment known as the REPL (read, evaluate, print, loop).  The REPL gives you instant feedback on what your code does and enables you to test either a single expression or run the whole application (including tests).

The approach I take is called REPL driven development and I'll explain that here in detail.


## Always running a REPL

As soon as I open a Clojure file I will start the REPL.  Coding without a REPL feels like tying my hands behind my back.  I want to get fast feedback from my code as I design it, testing my assumptions and design choices.

![Spacemacs Clojure REPL buffer powerbar](/images/spacemacs-clojure-repl-buffer-powerbar.png)


## Evaluating source code

Use Clojure source code buffers to evaluate code and display the results inline.

> #### Hint:: Evaluate and Comment
> `, e ;` will evaluate the current form and print the result under the expression as a comment
>
> Adding results as comments is a great way to demonstrate the design of your code, especially in a journal.


## Design Journal

It is highly recommended to journal your design process to make your code easier to understand and maintain.  Journals avoid the need for long hand-over or developer on-boarding processes as the journey through design decisions are already documented.

It is recommended to create a Design Journal section at the bottom of each namespace.  This journal should cover

* All the important REPL experiments used to create the resulting namespace code.
* Discussions of design choices, including those not taken and why.
* Expressions that can be evaluated to explain how a function or parts of a function works

The design journal can be used to create meaningful documentation for the project very easily and should prevent time spent on repeating exactly the same conversations.

> #### HINT::Add example journal
> [Design Journal for TicTacToe game using reagent, clojurescript and scalable vector graphics](https://github.com/jr0cket/tictactoe-reagent/blob/master/src/tictactoe_reagent/core.cljs#L124)


## Viewing data structures

Use Pretty Print to view data structures that are the result of evaluating your code.  This makes those data structures easier to parse as a developer and more likely to notice incorrect results.

Cider Inspector is also a great way to navigate through a nested data structure.

Cider debug tool includes inspect to view values and data structures during the evaluation of a Clojure function call.

> #### Hint::View large data sets
> `, e P` with open a new buffer with the results of the current function and so it very useful for larger data results.


## Code Style and idiomatic Clojure

Your editor should automatically apply formatting that follows the [Clojure Style guide](https://github.com/bbatsov/clojure-style-guide).

Continuous linting significantly reduces a wide range of bugs and syntax errors as they happen, speeding up the development process.

[clj-kondo](https://github.com/borkdude/clj-kondo) is a Clojure project that provides continuous Linting

[Eastwood](https://github.com/jonase/eastwood) also provides linting, although its more effective as a batch process before commit or as part of continuous integration.

Kibit provides feedback on the use of Clojure in your code, providing idiomatic Clojure suggestions.


## Test Driven Development and REPL Driven Development

You can use TDD and RDD together, there is a very natural merging of these approaches as they both encourage incremental changes and continuous feedback.  Test Driven Development also works well with Hammock Time, as you should spend more time thinking about what you want to do than typing code.  Tests provide an easy way to define and test your assumptions of your well considered design

With the power of the REPL, it is easy to get feedback on exactly how your code works.  Tests provide the codification of your evolving design and give you feedback when you break that design.

At some point before production you should have unit tests around the public API of each namespace in your project to catch regressions before committed.  It is much more efficient in terms of thinking time to create these tests as you stabilise the design that as an after thought.  So it makes sense to write these tests as part of the design process.

> #### Hint::Automate local test runner
> Set up an automated test runner that will run on each file save
> Tools: [eftest](https://github.com/weavejester/eftest), [kaocha](https://github.com/lambdaisland/kaocha)

## Continuous Integration

> #### TODO::work in progress, sorry

Wire up a continuous integration server that runs tests and builds code on every shared commit (or every commit if you run a CI server locally).

Spin up testable deployments of your application or service based on pre-defined branch commits or every commit if you do not share branches (i.e. push to shared master or develop branch), eg. Heroku Pipelines.

> #### Hint::Tools
> CircleCI
> GitHub Actions
