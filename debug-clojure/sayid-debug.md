# Sayid debug and profile tool

[Sayid](http://bpiel.github.io/sayid/), pronounced "siy EED", is an extensive debug and profile tool for Clojure projects. To debug or profile code it must be able to compile or sayid will fail to work.

> #### Hint::cider-debug - a simpler approach
> [cider-debug](cider-debug.md) is simpler and quicker approach to debugging.

Sayid works by intercepting and recording the inputs and outputs of functions. It can even record function calls that occur inside of functions. The user can select which functions to trace. Functions can be selected individually or by namespace. The recorded data can be displayed, queried and profiled.

Sayid currently has three components:
- core and its supporting namespaces
- nREPL middleware
- an emacs-cider nREPL client

| Key Binding | Description                    |
|-------------|--------------------------------|
| `SPC m d b` | instrument expression at point |
| `SPC m d e` | display last stacktrace        |
| `SPC m d r` | reload namespaces              |
| `SPC m d v` | inspect expression at point    |


## Configure Sayid

[Sayid](http://bpiel.github.io/sayid/) is an optional package in the Clojure layer for Spacemacs.

To enable sayid, add the following `:variable` to the `clojure` layer in `.spacemacs`

```elisp
     (clojure :variables
              clojure-enable-sayid t)
```


## Cider Jack-in

`, m s cider-jack-in-clj` to start the Clojure REPL via Cider jack-in, which should automatically include the Sayid nrepl middleware.

Include sayid as a dev-dependency in Leiningen or as an alias in Clojure CLI projects (e.g. `:lib/sayid` from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn))


## Cider Connect

Leiningen projects must include the Sayid plugin in order to use Cider Connect.

```clojure
{:user {:plugins [[cider/cider-nrepl "0.25.3"]
                  [com.billpiel/sayid "0.1.0"]]
        :dependencies [[nrepl/nrepl "0.7.0"]]}}
```

Clojure CLI projects will need to explicitly include the middleware configuration in the same alias that configures nrepl, e.g.

```clojure
  :repl/cider-debug
  {:extra-deps {nrepl/nrepl        {:mvn/version "0.9.0"}
                com.billpiel/sayid {:mvn/version "0.1.0"}
                cider/cider-nrepl  {:mvn/version "0.28.5"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[com.billpiel.sayid.nrepl-middleware/wrap-sayid,cider.nrepl/cider-middleware]"
                "--interactive"]}
```

If also using clj-refactor with Cider, then that nrepl middleware as well as sayid and cider will need to be included

```clojure
  :repl/cider-refactor-debug
  {:extra-deps {nrepl/nrepl                   {:mvn/version "0.9.0"}
                com.billpiel/sayid            {:mvn/version "0.1.0"}
                cider/cider-nrepl             {:mvn/version "0.28.5"}
                refactor-nrepl/refactor-nrepl {:mvn/version "3.5.3"}}
   :main-opts  ["-m" "nrepl.cmdline"
                "--middleware" "[com.billpiel.sayid.nrepl-middleware/wrap-sayid,refactor-nrepl.middleware/wrap-refactor,cider.nrepl/cider-middleware]"
                "--interactive"]}
```

> Cider connect will only work if the sayid nrepl middleware is added to the aliases used to configure the nREPL middleware.


## Learning Sayid

There is a noticeable learn curve to Sayid as it is quite comprehensive

{% youtube %}
https://www.youtube.com/watch?v=wkduA4py-qk?autoplay=1loop=1
{% endyoutube %}
