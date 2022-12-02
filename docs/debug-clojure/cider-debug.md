# CIDER Debug

`, d b` calls the `cider-debug-defn-breakpoint` command that sets breakpoints on the expression under the cursor.  If the expression is a function definition, then its name is marked as instrumented by the debug along with any calls to that function.

A debug menu appears above the expression, press `n` to step through each expression and see the inline result.

![Spacemacs Clojure cider debug menu](/images/spacemacs-clojure-cider-debug-menu.png)

> #### Hint::Switch to Emacs Edit mode for full menu
> `C-z` after starting cider-debug to [use `c e i p s` menu keys](https://github.com/syl20bnr/spacemacs/issues/13594) as otherwise they call the Evil normal state commands.  `C-z` to switch back to Evil normal state.

![Cider debugging](https://docs.cider.mx/cider/0.26/_images/cider_debugger.gif)

<div style="position: relative;padding-bottom: 56.25%;padding-top: 25px;height: 0;">
  <iframe frameborder="0" allowfullscreen style="border: none;position: absolute;top: 0;left: 0;width: 100%;height: 100%;" src="//www.youtube.com/embed/pyIbP4BOGpQ?start=1150"></iframe></div>

<p></p>

<!-- {% youtube %} -->
<!-- https://youtu.be/pyIbP4BOGpQ?t=1149 -->
<!-- {% endyoutube %} -->


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


## Skip over lazy functions
`o` (out) will jump out of evaluating an expression.

Use out to jump over evaluating code that has functions generating lazy infinite sequences, such as `range` or `cycle`.  Cider debug will then evaluate those functions in their outer expression where it should be safe to do so.

# References
* [Conditional Breakpoints in the Cider debugger](http://endlessparentheses.com/conditional-breakpoints-in-the-cider-debugger.html)
