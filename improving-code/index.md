# Improving Clojure code

Clojure code should be kept readable and consistently use idiomatic style, which can be managed by using a few additional tools

| Tool            | Description                       | Usage                      |
|-----------------|-----------------------------------|----------------------------|
| Linter          | Reports on code errors            | Continuously               |
| Formatter       | Formats the code for readability  | Automatically              |
| Static analyser | Suggests idiomatic use of Clojure | Regularly (before pushing) |

> #### Hint::Clojure style guide
> Linting and formatting follow the practices documented in the [Clojure style guide](https://guide.clojure.style/).

## Linting

Linting tools can be added as a `flycheck` service so code is continually checked as you are writing it.  Continuously linting picks up little bugs as you type and reduces the ammount of debugging required, as you are changing errors as you make them.

Linting will get rid of all the little errors and typos that are easily made, yet take time to find and fix.


## Static analyser

Kibit is a commonly used static analyser for Clojure projects, suggesting changes to the code it analyses to make it more idiomatic.


## Formatting

A consistent format of your code base makes it much more readable and therefore understandable by the development team.  The `clojure-mode` does manage basic formatting of your code, especially code indentation.

Spacemacs can be configured to automatically check and adjust any formatiing as you type.
