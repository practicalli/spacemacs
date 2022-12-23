# Evaluating individual Expressions

Evaluating individual expressions is a very effective way to test the actions of your code as you write it.  This approach helps keep expressions as simple as possible, leading to more effective Clojure code.

++comma++ ++"e"++ ++"f"++ is the most commonly used command and evaluates the current top-level expression.  The cursor can be anywhere inside the expression or nested expressions.

When defining functions, ++comma++ ++"e"++ ++"f"++ to evaluate them.  Then underneath the function definition, write a call to that function with appropriate arguments and evaluate that expression to test your function.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/eJ-JPmkzyP8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


## Deconstructing / Exploring a code base

Understanding Clojure code can sometime require you to evaluate only parts of an expression.  These are the commands that help with that.

++comma++ ++"e"++ ++"e"++ evaluates the expression before the cursor and is very useful for evaluating nested expressions.  You can also copy a nested expression `SPC v v` and paste it outside the parent expression and evaluate it with different values to see how it behaves.

++comma++ ++"e"++ ++semi-colon++ evaluates the current top-level expression and prints result as a comment.  Very useful when developing new code or working with less familiar functions and useful to keep a living document in a design journal or spike.


## Replace code with result

A powerful way to understand your code or explain to others what an expression does is to replace the code with result of its evaluation.  This technique is especially useful for expressions that are nested within another expressions.

++comma++ ++"e"++ ++"w"++  - replace previous expression with its return value

++"u"++ to undo these changes and return to the original code.
