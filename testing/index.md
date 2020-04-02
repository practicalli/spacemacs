# Testing
There are many aspects to testing software including
* Unit testing
* Contract testing - clojure.spec
* Generative testing
* Integration testing
* Performance testing
* Load testing

## Unit testing
[`clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html) is the default 'unit' testing framework for Clojure, as it has a simple syntax for writing tests and it is part of the Clojure.core library.

Other interesting unit testing frameworks include midje,

## Contract testing - `clojure.spec`
Establish contracts around functions and data structures, testing to ensure those contracts are not broken.

## Generative Testing
Tests are only as good as the thought that goes into them.  Generative testing can create a wider range of testing scenarios by providing generated data for tests.  This approach is very good at catching conditions that were not considered.

## Integration testing
Using Continuous Integration (CI) tools: CircleCI, Travis, GitLabs, etc.

Clojure has several test runners that can be used with CI servers
* cognitect-labs test runner
* Koacha
* eftest
* midje test runner

[deps.edn aliases for Clojure test runners](https://github.com/practicalli/clojure-deps-edn/blob/master/deps.edn#L97-L136)

## Performance testing
Tesing the execution time of specific functions or groups of functions, typically within a namespace.

`time` is a quick and easy tool to give a rough comparison of performance.

`criterium` provides more accurate guidance on performance

## Load / Stress Testing
Testing the whole system under loads to simulate the stress the system would be placed under in normal production environments.

`Gattling` is a JVM load tool.

There are many on-line load testing tools if you have a web facing application.
