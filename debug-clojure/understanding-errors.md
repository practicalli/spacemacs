# Understanding Clojure errors

When a run time error occurs in Clojure, a stack trace is generated which includes information from the Clojure code and the underlying Java platform.

A stack trace can seem daunting as it provide so much information.  There are common errors that are useful to learn to help quickly understand the root cause.

> Clojure editors such as CIDER help navigation and information hiding.  Tools like [AvisoNovate/pretty reformat stack traces](format-error-messages.md) to make them easier to understand.


## Structure of a stack trace

The Clojure compiler will catch an error exception, unwrap, and re-throw exceptions up the call chain from where they originally occur.  This provides a history of all the expressions called that lead to the exception.

`Exception in thread...` should be at the top of the stack trace, followed by the call stack in descending chronological time

TODO: example call stack


### Understanding Exception

An exception should provide a general context for the error and the assumed path to the error.

* `IllegalArgumentException`
* `ClassCastException`
* `ArityException`
* `ClassNotFound`


Example Exceptions include:

* `Don't know how to create ISeq from: clojure.lang.Keyword` - a keyword was used when a sequence (list, vector) was expected
* `Don't know how to create IFn from: clojure.lang.Integer` - an expression was evaluated that started with a value (specifically an Integer) rather than a symbol that points to a function definition.


<!-- ## Caused by -->

<!-- TODO: review https://stackoverflow.com/questions/16901836/how-do-i-get-better-feedback-from-clojure-errors -->
<!-- TODO: review https://8thlight.com/blog/connor-mendenhall/2014/09/12/clojure-stacktraces.html -->


### Answer is often the first line

A stack trace is printed in descending time order, with the most recent call at the top of the stack.

Between the `Exception` and the top of the call stack, most errors are quickly interpreted without the need to read the whole stack trace.



### Using the wrong kind of value

`IllegalArgumentException` is generated when using the wrong kind of value, e.g. using a value instead of a function name (symbol)


Evaluating `(1 2 3)` will try and call `1` as a function as it is first in the list.  As 1 is a value (integer) and not a function, so 1 does not implement the function interface, `IFn`.


<!-- ### Wrong number of arguments -->


## De-reference Values

Casting a value to a Future that has not been realised `java.util.concurrent.Future`


<!-- ## Navigate CIDER error reporter -->

<!-- > TODO: add video of navigating the cider errors buffer -->


## Diagnosing Classpath issues

`clojure -Spath > project-classpath.txt` will write the output the project classpath to the `project-classpath.txt` file.  The command will first download project dependencies that are not currently satisfied

The output is a single line of text, with each path in the class path separated by a colon character, `:`

`SPC f f` to open the file in Spacemacs

Separate the classpath output into individual lines with this vim command (`:` enters the command mode in the Emacs mini-buffer).  This makes the file easier to read and run diff comparisons upon.

```vim
:s/:/\n/g
```

> #### Hint::Diff - compare differences between files
> `SPC D f f` and selecting two files will open `ediff` and show a comparison.   Navigate the changes using `j` and `k`.  `a` to copy a change from the left buffer to the right buffer, `b` to copy right to left.


<!-- ## Errors tend to require decoding -->

<!-- he messages in the errors could be vastly improved to include things like variable names and provide better wording. A simple example is something like this: -->

<!-- (map [1 2 3] inc) -->

<!-- the error is -->

<!-- Don't know how to create ISeq from: clojure.core$inc -->

<!-- a much better error would be -->

<!-- invalid parameters to map, expecting [fn coll], got [coll fn] -->

<!-- or something along those lines -->



## Reading and understanding Clojure errors

Define a function that explicitly throws an exception using the `throw` function

```clojure
(defn explicit-exception [value]
  (throw (ex-info (str "Invalid value: " value)
                  {:value value})))

(explicit-exception "kaboom")
Execution error (ExceptionInfo) at user/explicit-exception (REPL:2).
Invalid value: kaboom
```

Deconstructing the error message

* `Execution` error: - in which Clojure phase the error occurred
* `ExceptionInfo`: - name of the class of the exception. `ex-info` internally creates an instance of `clojure.lang.ExceptionInfo`
* `user/explicit-exception` - name of the function where exception was thrown
* `REPL:2` - path and line of the file where exception was thrown. `REPL` means there is no file, the definition was created at the REPL prompt, on line 2
* `Invalid value: kaboom`: - error message thrown (the message passed to `ex-info` in this example)


Generate an exception by calling the function with the incorrect number of arguments

```clojure
(explicit-exception)

Execution error (ArityException) at user/eval137 (REPL:1).
Wrong number of args (0) passed to: user/explicit-exception
```

Deconstructing the error message

* `Execution error` - the implicit execution error is the same as before
* `ArityException` - class of the exception, i.e. `clojure.lang.ArityException`
* `user/eval137` -  every form evaluated in the REPL internally creates a function, generating a name in the form eval1234 and immediately executes the expression.
* `REPL:1` - error path is the first line of the REPL prompt
* `Wrong number of args (0) passed to: user/explicit-exception` - message generated from the exception

Use an anonymous function to wrap the call to the expression, to provide an explicit name when evaluated

```clojure
((fn named-for-context []
   (explicit-exception)))

Execution error (ArityException) at user/eval139$named-for-context (REPL:2).
Wrong number of args (0) passed to: user/explicit-exception
```

The error message function now includes a specific name making the error message more useful as it is more obvious in the code as to where the error occurred.


### View the stack trace

`*e` is a dynamic var that always points to the last error in a running REPL process.

Evaluate `*e` in the REPL to see the stack trace in detail, as an EDN hash-map

```clojure
user => e*
#error {
 :cause "Wrong number of args (0) passed to: user/explicit-exception"
 :via
 [{:type clojure.lang.ArityException
   :message "Wrong number of args (0) passed to: user/explicit-exception"
   :at [clojure.lang.AFn throwArity "AFn.java" 429]}]
 :trace
 [[clojure.lang.AFn throwArity "AFn.java" 429]
  [clojure.lang.AFn invoke "AFn.java" 28]
  [user$eval139$named-for-context__140 invoke "NO_SOURCE_FILE" 2]
  ...]}

```


Adding `named-for-context` to the execution, anything before this context should not be relevant. Now let's try a harder one:


### Stack trace for Lazy functions

```clojure
(map explicit-exception [1])

Error printing return value (ExceptionInfo) at user/explicit-exception (NO_SOURCE_FILE:2).
Invalid value: 1
```

`Error printing return value` at the start of the error shows it's not a Execution error anymore. The code was executed and returned a value.

`clojure.core/map` returns a lazy-seq and when the printer tries to print the result an exception is thrown.

Use the `*e` dynamic var to see the full stack trace

```clojure
*e
#error {
 :cause "Invalid value: 1"
 :data {:x 1}
 :via
 [{:type clojure.lang.ExceptionInfo
   :message nil
   :data #:clojure.error{:phase :print-eval-result}
   :at [clojure.main$repl$read_eval_print__9112 invoke "main.clj" 442]}
  {:type clojure.lang.ExceptionInfo
   :message "Invalid value: 1"
   :data {:value 1}
   :at [user$explicit_exception invokeStatic "NO_SOURCE_FILE" 2]}]
 :trace
 [[user$explicit_exception invokeStatic "NO_SOURCE_FILE" 2]
  [user$explicit_exception invoke "NO_SOURCE_FILE" 1]              ;; 6
  [clojure.core$map$fn__5885 invoke "core.clj" 2757]               ;; 5
  [clojure.lang.LazySeq sval "LazySeq.java" 42]
  [clojure.lang.LazySeq seq "LazySeq.java" 51]                     ;; 4
  [clojure.lang.RT seq "RT.java" 535]
  [clojure.core$seq__5420 invokeStatic "core.clj" 139]
  [clojure.core$print_sequential invokeStatic "core_print.clj" 53]
  [clojure.core$fn__7331 invokeStatic "core_print.clj" 174]
  [clojure.core$fn__7331 invoke "core_print.clj" 174]
  [clojure.lang.MultiFn invoke "MultiFn.java" 234]                 ;; 3
  [clojure.core$pr_on invokeStatic "core.clj" 3662]
  [clojure.core$pr invokeStatic "core.clj" 3665]
  [clojure.core$pr invoke "core.clj" 3665]
  [clojure.lang.AFn applyToHelper "AFn.java" 154]
  [clojure.lang.RestFn applyTo "RestFn.java" 132]
  [clojure.core$apply invokeStatic "core.clj" 667]
  [clojure.core$prn invokeStatic "core.clj" 3702]
  [clojure.core$prn doInvoke "core.clj" 3702]                      ;; 2
  [clojure.lang.RestFn invoke "RestFn.java" 408]
  [clojure.main$repl$read_eval_print__9112 invoke "main.clj" 442]  ;; 1
  [clojure.main$repl$fn__9121 invoke "main.clj" 458]
  [clojure.main$repl invokeStatic "main.clj" 458]
  [clojure.main$repl_opt invokeStatic "main.clj" 522]
  [clojure.main$main invokeStatic "main.clj" 667]
  [clojure.main$main doInvoke "main.clj" 616]
  [clojure.lang.RestFn invoke "RestFn.java" 397]
  [clojure.lang.AFn applyToHelper "AFn.java" 152]
  [clojure.lang.RestFn applyTo "RestFn.java" 132]
  [clojure.lang.Var applyTo "Var.java" 705]
  [clojure.main main "main.java" 40]]}

```

Deconstructing the stack trace

 1. Where clojure.main REPL starts the print parse
 2. `clojure.main` uses `clojure.core/prn`
 3. `clojure.core/prn` uses `clojure.core/print-method`. Note: a multimethod adds complexity to stacktraces
 4. print method invoked the method to evaluare the lazy sequence
 5. the lazy sequence was created inside a call to `clojure.core/map`
 6. The lazy sequence is called by explicit-exception

`clojure.core/munge` is the function that converts namespaces with hyphens, i.e. `explicit-exception` into the name used on the Java class path, i.e. `explicit_exception`

`clojure.repl/pst` to get a nice looking stacktrace print


## Reference

[Clojure Error message catalogue](https://github.com/yogthos/clojure-error-message-catalog) contains example errors gathered by the Clojure community.


Implementing interfaces

| Name                  | Interface             | Example                                                           |
|:----------------------|-----------------------|-------------------------------------------------------------------|
| IFn                   | Function              | anonymous function or symbol that points to a function definition |
| ISeq                  | Sequence              | list, result from sequence function e.g. map, filter, etc.        |
| IPersistentCollection | Persistent Collection | list, vector, hash-map or set                                     |
|                       |                       |                                                                   |


| Error                                         | Description                                                  |
|:----------------------------------------------|--------------------------------------------------------------|
| `Don't know how to create ISeq from:` <value> | Expecting a sequence (list, vector) rather than the value    |
| `Don't know how to create IFn from:` <value>  | Expecting a symbol name that points to a function definition |
|                                               |                                                              |
