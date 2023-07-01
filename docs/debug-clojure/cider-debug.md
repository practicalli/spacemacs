# CIDER Debug

Instrument one or more expressions or function definitions to use the Cider step debug tool, showing intermittent values from evaluating each form in turn.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/pyIbP4BOGpQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>

## Debug functions

++comma++ ++"d"++ ++"b"++  with the cursor over a function definition calls the `cider-debug-defn-breakpoint` command, setting breakpoints throughout the function definition. 

Evaluate a call to the function, e.g. `, e f`, to start the cider debug tool.

A debug menu appears above the expression, press `n` to step through each expression and see the inline result.

![Spacemacs Clojure cider debug menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-cider-debug-menu.png?raw=true)

[:globe_with_meridians: Cider debug key bindings](https://docs.cider.mx/cider/debugging/debugger.html#keys){target=_blank .md-button} 

??? HINT "Evil key conflict - switch to Emacs Edit mode for full menu"
    `C-z` after starting cider-debug to [use `c e i p s` menu keys](https://github.com/syl20bnr/spacemacs/issues/13594) as otherwise they call the Evil normal state commands.  `C-z` to switch back to Evil normal state once debug is complete.


??? HINT "#dbg tag to debug a form"
    `#dbg` tag before a form is the same as calling `, d b` to create breakpoints throughout an expression or function definition


### Skip over lazy functions

`o` (out) will jump out of evaluating an expression.

Use out to jump over evaluating code that has functions generating lazy infinite sequences, such as `range` or `cycle`.  Cider debug will then evaluate those functions in their outer expression where it should be safe to do so.


## Debug expressions

Debug an expression in the same way as a function definition.  

!!! INFO "Debug break point scope"
    Using `, d b` on an expression that calls a function will not add break points to the function being called.


## Remove debug instrumentation

Evaluate the function definition or expression to remove the debug instrumentation and all breakpoints.


## Conditional break points

`:break/when` metadata on a `#dbg` directive defines a condition when a breakpoint is triggered, allowing the evaluation to iterate until a desirable point is reached.

Setting a condition is especially useful when there are many iterations required before reaching a point of issue, for example iterating through a large data set.

A `#break` can be added on any Clojure form.  In this example the evaluation will break on each iteration of the sequence, showing the local value of the index.

```clojure
(dotimes [index 10]
  #break index)
```

Add a break condition within the expression to be evaluated and the evaluation will iterate until the condition is met and then break

`n` to continue to the next break point will complete the evaluation as the break condition is no longer met

```clojure
(dotimes [index 10]
  #dbg ^{:break/when (= index  7)}
  index)
```

The evaluation will break each time a condition is met, so a break will occur multiple times when the value of index is odd

```clojure
(dotimes [index 10]
  #dbg ^{:break/when (odd? index)}
   index)
```


# References

* [Conditional Breakpoints in the Cider debugger](http://endlessparentheses.com/conditional-breakpoints-in-the-cider-debugger.html)
