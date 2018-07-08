# Adding Clojure support to Spacemacs

Adding Clojure support to Spacemacs is as easy as adding the Clojure layer to the Spacemacs configuration.

Spacemacs can add the Clojure layer automatically, when you open a Clojure or ClojureScript file (.clj .cljc .cljs) for the very first time.  Spacemacs will prompt you, asking if you wish to install the Clojure layer.

Saying yes will add **clojure** to the `~/.spacemacs` configuration and download all the relevant packages (from elpa, melpa).

Once the Clojure packages have downloaded, you are ready to use all the Clojure features.

> ####TODO::Create specific video
> Create a specific video that shows how the Clojure layer is added when opening the your first Clojure file
>
> Jump to 6 minutes 45 seconds in the video below to see the layer being installed.

{% youtube %}
https://www.youtube.com/watch?v=Uuwg-069NYE&t=405s
{% endyoutube %}


> ####Hint::
> If it seems like something is not working correctly, try restarting Emacs, `SPC q r`, to make sure all the packages that make up the Clojure layer are loaded.
