```none
██████╗ ██████╗  █████╗  ██████╗████████╗██╗ ██████╗ █████╗ ██╗     ██╗     ██╗
██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║██╔════╝██╔══██╗██║     ██║     ██║
██████╔╝██████╔╝███████║██║        ██║   ██║██║     ███████║██║     ██║     ██║
██╔═══╝ ██╔══██╗██╔══██║██║        ██║   ██║██║     ██╔══██║██║     ██║     ██║
██║     ██║  ██║██║  ██║╚██████╗   ██║   ██║╚██████╗██║  ██║███████╗███████╗██║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝
```

# Clojure development with Spacemacs

![Spacemacs Practicalli - interactive development with Clojure and Emacs, using CIDER](https://github.com/practicalli/graphic-design/blob/live/book-covers/practicalli-spacemacs-book-banner.png)

This is an introduction to developing Clojure applications using Emacs, specifically based on the Spacemacs configuration for Emacs and CIDER.  The aim is to help you be productive with those tools as quickly as possible.

Spacemacs is a community-driven project that provides a simple way to add lots of extra functionality to Emacs, without having to manage packages yourself or spend time writing common configuration code.

[Discuss this guide on #practicalli channel of the Clojurians Slack community](https://clojurians.slack.com/messages/practicalli).

[Create a free Clojurians Slack community account](http://clojurians.net/).

This workshop will cover the following topics:
* Emacs basics, common commands and tools
* Powerful editing and refactor tools (iedit, narrowing, helm-ag, multiple cursors, visual undo)
* Adding and enhancing the Clojure layer
* Running the REPL, evaluating code, inspecting data, debug, reloaded workflow
* Running tests & test reports
* Structural editing (smartparens/evil-cleverparens)
* Clojure docs, auto-completion, snippets
* Clojurescript development, figwheel-main and reagent
* Org-mode for project documentation, literate programming & presentations


## Book status

[![GitHub issues](https://img.shields.io/github/issues/practicalli/spacemacs?label=content%20ideas&logo=github)](https://img.shields.io/github/issues/practicalli/spacemacs?label=content%20ideas&logo=github)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/y/practicalli/spacemacs?label=commits&logo=github)](https://img.shields.io/github/commit-activity/y/practicalli/spacemacs?label=commits&logo=github)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/practicalli/spacemacs?label=pull%20requests&logo=github)](https://img.shields.io/github/issues-pr-raw/practicalli/spacemacs?label=pull%20requests&logo=github)

[![MegaLinter](https://github.com/practicalli/spacemacs/actions/workflows/megalinter.yaml/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/megalinter.yaml)
[![Publish Book](https://github.com/practicalli/spacemacs/actions/workflows/publish-book.yaml/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/publish-book.yaml)
[![pages-build-deployment](https://github.com/practicalli/spacemacs/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/practicalli/spacemacs/actions/workflows/pages/pages-build-deployment)

![GitHub contributors](https://img.shields.io/github/contributors/practicalli/spacemacs?style=for-the-badge&label=github%20contributors)


## Creative commons license

<div style="width:95%; margin:auto;">
  <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
  This work is licensed under a Creative Commons Attribution 4.0 ShareAlike License (including images & stylesheets).
</div>


## Contributing

Please [read the contributing section of the book](https://practical.li/spacemacs/introduction/contributing/) before raising an issue or pull request

* [Current Issues](https://github.com/practicalli/spacemacs/issues)
* [Current pull requests](https://github.com/practicalli/spacemacs/pulls)

By submitting content ideas and corrections you are agreeing they can be used in this workshop under the [Creative Commons Attribution ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/).  Attribution will be detailed via [GitHub contributors](https://github.com/practicalli/neovim/graphs/contributors).


## Sponsor Practicalli

[![Sponsor Practicalli via GitHub](https://raw.githubusercontent.com/practicalli/graphic-design/live/buttons/practicalli-github-sponsors-button.png)](https://github.com/sponsors/practicalli-johnny/)

The sponsorship funds are used solely for the continued development of [Practicalli series of books and videos](https://practical.li/)

Thank you to [Cognitect](https://www.cognitect.com/), [Nubank](https://nubank.com.br/) and a wide range of other [sponsors](https://github.com/sponsors/practicalli-johnny#sponsors) for your continued support



## GitHub Actions

The megalinter GitHub actions will run when a pull request is created,checking basic markdown syntax.

A review of the change will be carried out by the Practicalli team and the PR merged if the change is acceptable.

The Publish Book GitHub action will run when PR's are merged into main (or the Practicalli team pushes changes to the default branch).

Publish book workflow installs Material for MkDocs version 9


## Local development

Install mkdocs version 9 using the Python pip package manager

```bash
pip3 install mkdocs-material=="9.4"
```

Install the plugins used by the Practicalli site using Pip (these are also installed in the GitHub Action workflow)

```bash
pip3 install mkdocs-material mkdocs-callouts mkdocs-glightbox mkdocs-git-revision-date-localized-plugin mkdocs-redirects pillow cairosvg
```

> pillow and cairosvg python packages are required for [Social Cards](https://squidfunk.github.io/mkdocs-material/setup/setting-up-social-cards/)

Fork the GitHub repository and clone that fork to your computer,

```bash
git clone https://github.com/<your-github-account>/<repository>.git
```

Run a local server from the root of the cloned project

```bash
make docs
```

The website will open at <http://localhost:8000>

If making smaller changes, then only rebuild the content that changes, speeding up the local development process
```bash
make docs
```

