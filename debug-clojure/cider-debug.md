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



## Skip over lazy functions
`o` (out) will jump out of evaluating an expression.

Use out to jump over evaluating code that has functions generating lazy infinite sequences, such as `range` or `cycle`.  Cider debug will then evaluate those functions in their outer expression where it should be safe to do so.

# References
* [Conditional Breakpoints in the Cider debugger](http://endlessparentheses.com/conditional-breakpoints-in-the-cider-debugger.html)
