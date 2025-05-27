# Testing

There are many aspects to testing software throughout the development lifecycle.

| Category              | Description                                                                             |
|-----------------------|-----------------------------------------------------------------------------------------|
| Unit testing          | Assertion based testing of specific functions (units)                                   |
| Specification testing | Checking data and functions conform to `clojure.spec` specifications                    |
| Generative testing    | Automatically generated data to test specifications                                     |
| Integration testing   | Tests across system components and multiple systems, typically during the build process |
| Performance testing   | Measuring the resources taken during function calls and system events                   |
| Load testing          | Measuring the capacity for the system to manage concurrent events                       |


## Unit testing

[`clojure.test`](https://clojure.github.io/clojure/clojure.test-api.html){target=_blank} is the de facto unit testing framework for Clojure. Tests have a simple syntax using `deftest` to contain multiple assertions defined with `is`. It is part of the Clojure.core library and therefore accessible to all Clojure projects.

[expectations.clojure.test library](https://github.com/clojure-expectations/clojure-test){target=_blank} can be added to clojure test to provide expectations style assertions (`expect`, `more`, `more-of`, etc.).


## Specification testing - `clojure.spec`

Defining specifications around functions and data structures, testing to ensure those contracts are not broken.  Instrumentation of functions ensures that function calls follow specifications, including arguments, return values and a relationship between both.


## Generative Testing

Tests are only as good as the thought that goes into them.  Generative testing can create a wider range of testing scenarios by providing generated data for tests.  This approach is very good at catching conditions that were not considered.


## Integration testing

Continuous Integration (CI) services CircleCI, GitHub and GitLabs all support Clojure projects.

Clojure has several test runners that can be used with CI servers and [practicalli/clojure-deps.edn defines a range of aliases for Clojure test runners](https://github.com/practicalli/clojure-cli-config/#test-runners-and-test-coverage-tools){target=_blank}.

* `:test/run` to run [lambdaisland/kaocha](https://github.com/lambdaisland/kaocha){target=_blank} test runner, which is configured to stop immediately if any tests fail, minimising the time the CI workflow is running.
* `test/cognitect` to run [cognitect-labs/test-runner](https://github.com/cognitect-labs/test-runner){target=_blank}, a light-weight test runner


## Performance testing

Tesing the execution time of specific functions or groups of functions, typically within a namespace.

`time` is a quick and easy tool to give a rough comparison of performance.

`criterium` provides more accurate guidance on performance


## Load / Stress Testing

Testing the whole system under load that simulate the stress the system would be placed under in normal production environments.

[Gattling](https://gatling.io/open-source/){target=_blank} is a JVM load tool.

There are many on-line load testing tools if you have a web facing application.
