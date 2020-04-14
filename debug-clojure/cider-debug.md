# CIDER Debug

`, d b` calls the (`cider-debug-defn-breakpoint`) command that sets breakpoints on the expression under the cursor.  If the expression is a function definition, then its name is marked as instrumented by the debug along with any calls to that function.

{% youtube %}
https://youtu.be/pyIbP4BOGpQ?t=1149
{% endyoutube %}



> #### Hint::Skip over lazy functions
> `o` (out) will jump out of evaluating an expression.
>
> Use out to jump over evaluating code that has functions generating lazy infinite sequences, such as `range` or `cycle`.  Cider debug will then evaluate those functions in their outer expression where it should be safe to do so.



# References

http://endlessparentheses.com/conditional-breakpoints-in-the-cider-debugger.html
