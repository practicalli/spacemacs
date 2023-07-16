# Contributing to Practicalli

Practicalli books are written in markdown and use MkDocs to generate the published website via a GitHub workflow.  MkDocs can also run a local server using the `make docs` target from the `Makefile`

[:fontawesome-brands-github: Issues](https://github.com/practicalli/spacemacs/issues){target=_blank .md-button}
[:fontawesome-brands-github: Pull requests](https://github.com/practicalli/spacemacs/pulls){target=_blank .md-button}
[:fontawesome-brands-github: practicalli/spacemacs.d](https://github.com/practicalli/spacemacs-config/){target=_blank .md-button}

[:fontawesome-brands-github: practicalli/spacemacs](https://github.com/practicalli/spacemacs/){target=_blank} is written in markdown and uses MkDocs to generate the website via a GitHub action.

[:fontawesome-brands-github: practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config/){target=_blank} contains the complete Spacemacs configuration used in this guide written in Emacs Lisp, with its own [:fontawesome-brands-github: Issues](https://github.com/practicalli/spacemacs-config/issues) and [:fontawesome-brands-github: pull requests](https://github.com/practicalli/spacemacs-config/pulls)

By submitting content ideas and corrections you are agreeing they can be used in this workshop under the [:globe_with_meridians: Creative Commons Attribution ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/){target=_blank}.  Attribution will be detailed via [:fontawesome-brands-github: GitHub contributors](https://github.com/practicalli/spacemacs/graphs/contributors){target=_blank}.

All content and interaction with any persons or systems must be done so with respect and within the Practicalli Code of Conduct.


## Book Status

[![GitHub issues](https://img.shields.io/github/issues/practicalli/spacemacs?label=content%20ideas&logo=github)](https://img.shields.io/github/issues/practicalli/spacemacs?label=content%20ideas&logo=github){target=_blank}
[![GitHub commit activity](https://img.shields.io/github/commit-activity/y/practicalli/spacemacs?label=commits&logo=github)](https://img.shields.io/github/commit-activity/y/practicalli/spacemacs?label=commits&logo=github){target=_blank}
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/practicalli/spacemacs?label=pull%20requests&logo=github)](https://img.shields.io/github/issues-pr-raw/practicalli/spacemacs?label=pull%20requests&logo=github){target=_blank}

[![MegaLinter](https://github.com/practicalli/spacemacs/actions/workflows/megalinter.yaml/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/megalinter.yaml){target=_blank}
[![Publish Book](https://github.com/practicalli/spacemacs/actions/workflows/publish-book.yaml/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/publish-book.yaml){target=_blank}
[![pages-build-deployment](https://github.com/practicalli/spacemacs/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/pages/pages-build-deployment){target=_blank}

![GitHub contributors](https://img.shields.io/github/contributors/practicalli/spacemacs?style=for-the-badge&label=github%20contributors)


## Submit and issue or idea

[:fontawesome-brands-github: Raise an issue via the GitHub repository](https://github.com/practicalli/spacemacs/issues){target=_blank} when

* a page contains examples or explaintions that are not clear, suggesting an alternative where relevant.
* a topic is not covered or further examples are required

For small issues or if a discussion is required, post a message on [:globe_with_meridians: #practicalli channel of the Clojurians Slack community](https://clojurians.slack.com/messages/practicalli).


## Considering a Pull request?

Before investing any time in a pull request, please raise a new issue explaining the situation.  This can save you and the maintainer time and avoid rejected pull requests.

Please keep pull requests small and focused, as they are much quicker to review and easier to accept.  Ideally PR's should be for a specific page or at most a section.

A PR with a list of changes across different sections will not be merged, although it may be reviewed at some point with changes cherry picked.

Issues such as grammar improvements are typically a sign of a rushed section that requires a rewrite, so a pull request to fix a typeographic error will probably not be merged.  Raise an issue, or post a thread in the [:globe_with_meridians: Clojurians Slack #practicall channel](https://clojurians.slack.com/messages/practicalli)


## Contributing to Spacemacs

The [:fontawesome-brands-github: Spacemacs contribution guidelines](https://github.com/syl20bnr/spacemacs/blob/develop/CONTRIBUTING.org){target=_blank} details how to get help, report issues and contribute to the project.

`SPC h I` to raise an issue on the [:fontawesome-brands-github: Spacemacs GitHub issue tracker](https://github.com/syl20bnr/spacemacs/issues){target=_blank}, automatically including your Spacemacs and Operating system details.

Please review issues and leave feedback, especially confirming issues are reproducible on your Spacemacs configuration. `SPC h d s` to include your system configuration.

Contribute changes via pull requests:

1. Fork the Spacemacs project on GitHub and clone your fork
2. Make changes and update relevant README files and the CHANGELOG.develop file
3. Commit changes to the new branch and push to your fork.
4. Visit your fork on GitHub and create a pull request (or [:fontawesome-solid-book-open: setup forge](/spacemacs/source-control/forge-configuration/) and create PR from Magit)

<p style="text-align:center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/OMS-3Jl05mE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


Making a change to a pull request you have created is also easy to do

<p style="text-align:center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/gwFGSVtFrgQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


## Thank you to all contributors

A huge thank you to Rich Hickey and the team at Cognitect for creating and continually guiding the Clojure language.  Special thank you to Alex Miller who has provided excellent advice on working with Clojure and the CLI tooling.

I would also like to thank everyone that has joined in with the [:globe_with_meridians: London Clojurins community](https://www.meetup.com/London-Clojurians/){target=_blank}, [:globe_with_meridians: ClojureBridgeLondon](https://clojurebridgelondon.github.io/){target=_blank}, [:globe_with_meridians: Clojurians Slack community](http://clojurians.net/){target=_blank}, [:globe_with_meridians: Clojurians Zulip](https://clojurians.zulipchat.com/){target=_blank} community and [:globe_with_meridians: Clojureverse community](https://clojureverse.org/){target=_blank}.

Thank you to everyone who sponsors the Practicalli websites and videos and for the recent [:globe_with_meridians: Clojurists Together sponsorship](https://www.clojuriststogether.org/), it helps me continue the work at a much faster pace.

Special thanks to [Bruce Durling](https://twitter.com/otfrom){target=_blank} for getting me into Cloure in the first place.

[:fontawesome-brands-github: duianto](https://github.com/duianto) for discussions and accepting my pull requests to Spacemacs

In no specific order, the following people have provided valuable input to this work

* Chris Howe-Jones - [@agile-geek](https://twitter.com/agile_geek)
* Colin Yates - [@yatesco](https://twitter.com/yatesco)
* [Jun Tian](https://disqus.com/by/juntian/)
* [:fontawesome-brands-github: Stefan Pfeiffer](https://github.com/dl1ely)

