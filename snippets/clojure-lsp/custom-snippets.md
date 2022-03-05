# Custom snippets

[Custom snippets](https://clojure-lsp.io/settings/#snippets) are defined in the Clojure LSP EDN configuration using the `:additional-snipets` key.  The snippet body uses the same tab stop and placeholder syntax as Yasnipets, although the body is contained within a string.

Built-in snippets can include Clojure code for generating the text of the snippet when expanded.  Custom snippets do not currently support evaluation of code in the snippet.

> #### Hint::Clojuse LSP Configuration locations
> Project specific configuration resides in `.lsp/config.edn`
>
> User level configuration is either `$XDG_CONFIG_HOME/clojure-lsp/config.edn` or `$HOME/.lsp/config`


## Snippet definition

The `:additional-snippets` key is associated with a vector or hash-maps, `[{}{},,,]` with each hash-map defining a snippet using the keys:

`:name` - name of the snippet, typed into the editor for completion

`:detail` - a meaningful description of the snippet

`:snippet` - the definition of the snippet, with tab stops and current-form syntax

The `:snippet` can be any text, ideally with syntax that is correct for the particular language


### Snippet Tab Stops

Include `$` with a number, e.g. `$1`,`$2`,`$3`,  to include tab stops in the snippet.  Once the snippet code has been generated, `TAB` key jumps through the tab stops in sequence, allowing customisation of a generic snippet.

`$0` marks the final position of the cursor, after which `TAB` has no more positions in the snippet to jump to.


### Snippet current-form

When a Clojure LSP snipped includes `$current-form` then typing a snippet name in front of an existing Clojure form includes that form in the generated code.

```clojure
{:additional-snippets [{:name "wrap-let-sexpr"
                        :detail "Wrap current sexpr in let"
                        :snippet "(let [$1 $current-form] $0)"}]}
```

> #### WARNING::Limited scope with current-form
> A Snippet including `$current-form` is only active when typed in front of an existing expression.  A snippet is not recognised when typed at the top level.


### Placeholders

Tab Stops can also include default values or text used as hint on what each tab stop value is for.  These are referred to as placeholders.

`${1:default-value}` is the form of a placeholder for tab stop 1.  When the cursor tabs to tab stop 1, the default-value text is highlighted and replaces as soon as characters are typed.

Placeholder text is not replaced for `$0` tab-stop, as the snippet interaction is effectively over at this point.

The `deftest` custom snippet shows examples of placeholders for three tab stops.

```clojure
{:name "deftest"
 :detail "deftest clojure.test"
 :snippet
 "(deftest ${1:name}-test
    (testing \"${2:Context of the test assertions}\"
      (is (= ${3:assertion-values}))$4))
  $0"}
```

> #### Hint::Escape string quotes in snippet body
> Use `\` character before the open and closing `"` character of any string that is part of the snippet body.  For example, doc-strings in function definitions or the string in `testing` function.


### Clojure code driven snippet - built-in snippets only

The built-in `defn` snippet uses Clojure code to help generate the snippet.

`%s` is a substitution point within a snippet, used by the standard Clojure `format` command, used to included either `defn ^:private` or `defn-`, depending on the value returned from the `if` expression.

`:use-metadata-for-privacy?` is a key from the Clojure LSP configuration

```clojure
 {:label "defn-"
  :detail "Create private function"
  :insert-text (format "(defn%s ${1:name} [$2]\n  ${0:body})"
                       (if (:use-metadata-for-privacy? settings)
                         " ^:private"
                         "-"))}
```

The syntax for built-in snippets is slightly different that the `:additional-syntax` form.  The internal form uses `:label` for `:name` and `:insert-text` for `:snippet`.

> Clojure code only works for built-in snippets and not `:additional-snippets`. Clojure LSP is compiled by Graal to a native binary, including the built-in snippets.  To include Clojure code in a snippet then consider submitting a pull request to the Clojure LSP project to add a built-in snippet.
