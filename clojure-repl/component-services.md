# Component services libraries

> #### TODO::work in progress, sorry
> Example project and component services code.
> Video showing reloading in action.

Clojure has several library to manage the lifecycle of components that make up the application, especially those components with state. Components can be started and stopped in a specific order.

Example component services libraries included

* [mount](https://github.com/tolitius/mount)
* [integrant](https://github.com/weavejester/integrant)
* [component](https://github.com/stuartsierra/component)

## Example project with component services

{% tabs mount="Mount", integrant="Integrant", component="Component" %}

<!-- Mount example -->
{% content "mount" %}

TODO:

<!-- Integrant example -->
{% content "integrant" %}

TODO:

<!-- Component example -->
{% content "component" %}

TODO:

{% endtabs %}
<!-- End of Clojure editors -->



## Configure cider-refresh to use component services

`SPC p e` to open a `.dirs.locals.el` in the current project, creating the file if it does not exist.

Add the following elisp code and save the file, `SPC f s`

```elisp
((nil . ((cider-refresh-before-fn . "practicalli.app.repl/stop")
         (cider-refresh-after-fn . "practicalli.app.repl/start")
         )))
```

This code calls the `stop` function from the component services library before the REPL is refreshed.  After `cider-refesh` the `start` function is called to restart all the components in the defined order in the project.



## Reference
https://spin.atomicobject.com/2018/01/20/reload-clojure-spacemacs/
