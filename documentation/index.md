# Documentation

You can look up the documenation for Clojure functions from within Spacemacs using `M-RET` or `SPC m`

* `ha` - cider-apropos
* `hh` - cider-doc
* `hj` - cider-javadoc
* `hn` - cider-browse-ns


You can also search through your project using smart search, `SPC /`

![Spacemacs smart search](/images/spacemacs-smart-search-example.png ) 



## cider-apropos

> FIXME: Improve this section - suggestions welcome

Show all symbols whose names match QUERY, a regular expression.

(cider-apropos QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)

QUERY can also be a list of space-separated words (e.g. take while) which
will be converted to a regular expression (like take.+while) automatically
behind the scenes.

The search may be limited to the namespace NS, and may
optionally search doc strings (based on DOCS-P), include private vars
(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).

