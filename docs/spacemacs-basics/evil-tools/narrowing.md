# Narrowing - very selective editing

Narrowing displays just a part of the current buffer you are working with, allowing you to carry out some very specific editing.

[![Spacemacs](/images/spacemacs-narrow-numbers-menu.png)](/images/spacemacs-narrow-numbers-menu.png)


Typical uses are to select a region or a function definition to narrow on.

For example, you may have two Clojure functions that use the same local name in a `let` statement.  The local name is used a number of times and you want to rename it.  By narrowing on to just that function, you can change the local names all at once without affecting the other function definition.


## Example: Narrowing and multiple replace

In this example I narrow my 100-days-of-code log to just edit a single day of the log and use iedit to manage a multiple replace on just the text for that day.

{% youtube %}
https://www.youtube.com/watch?v=4bVMXXxPiQs
{% endyoutube %}
