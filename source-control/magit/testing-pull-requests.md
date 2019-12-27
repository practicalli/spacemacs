# Testing Pull Requests with Magit

[Magit](https://magit.vc/) provides an easy way to try out pull requests from remote repositories, e.g. Github, Gitlab.

`SPC g s`  to open Magit in the git project the current file belongs to.

`b y`  in Magit will popup the current list of pull request from the git project.  Selecting a pull request will open git a local branch for that pull request.  You can now test all the changes you wish.

Once you are done, you can go back to magit with `SPC g s` and change back to your previous local branch with `b b`.

So Magit provides a quick and simple way to collaborate with other developers.


## Checking out a Pull Request from the Spacemacs project

Here is a simple example of using Magit to try out a pull request from the Spacemacs project from within Spacemacs itself.

{% youtube %}
https://youtu.be/t8tEzJ1RnW0
{% endyoutube %}
