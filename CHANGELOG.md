# Changelog

## Unreleased


### Added
- docs(docs): 📝 added a docs top level section to group markdown and org-mode


## 2026-08-22

### Added

- build(marksman): 🔧 define docs directory as root to correctly identify links

### Changed

- ci(github): 🔧 practicalli workflows for zensical static site generator
- build(make): 🔧 practicalli tasks for zensical
- build(overrides): 💄 update no page found and announcement for zensical migration
- build(mkdocs): 🔧 palette based on OS preferences
- docs(format): ✏️ update to relative links and resolve page not existing issues
- ci(github): update GitHub actions with `make dependencies-update`

| :file                                          | :name                                       | :current | :latest |
|------------------------------------------------|---------------------------------------------|----------|---------|
| .github/workflows/changelog-check.yaml         | actions/checkout                            | v4       | v6.0.2  |
| .github/workflows/megalinter.yaml              | actions/checkout                            | v4       | v6.0.2  |
|                                                | actions/upload-artifact                     | v4       | v7.0.1  |
|                                                | oxsecurity/megalinter/flavors/documentation | v8       | v9.4.0  |
| .github/workflows/publish-book.yaml            | actions/cache                               | v4       | v5.0.4  |
|                                                | actions/checkout                            | v4       | v6.0.2  |
|                                                | actions/setup-python                        | v5       | v6.2.0  |
| .github/workflows/scheduled-stale-check.yaml   | actions/stale                               | v9       | v10.2.0 |
| .github/workflows/scheduled-version-check.yaml | actions/checkout                            | v4       | v6.0.2  |


## 2026-04-12

### Added
- dev: add scheduled stale issue & pull request check (monthly)

### Changed
- Fixed key combination in `docs/install-spacemacs/change-font.md`
- ci: spell lychee & repository trufflehog linters warn only (false positives)
- clojure: update project configuration & examples
- mkdocs: update emoji extension and readme for Material version 9.4
- dev: action/checkout@v4 and sparse-checkout for Megalinter workflow
- dev: action/checkout@v4 and sparse-checkout for publish-book workflow
- dev: action/checkout@v4 and sparse-checkout for scheduled-version-check workflow
- dev: action/checkout@v4 and sparse-checkout for changelog-check workflow
- dev: update license to creative commons share-alike
- emacs: move eshell configuration from install to emacs-lisp section
- reference: move switch to develop to reference section (develop long been default branch)
- basics: update space and comma menu screenshots
- basics: emacs structure and golden ratio images, format tables
- basics: file buffer project layout treemacs and ranger screenshots
- basics: dird key bindings update
- basics: layouts and workspaces key bindings and button links update
- basics: managing buffers key bindings and screenshots
- basics: managing windows video, key bindings and screenshots
- clojure: evaluating screenshots
- clojure: undef vars (symbols) update wording and screenshots
- clojure: update wording and links on refresh repl state page
- clojure: cider jack-in edit command screenshot
- clojure: significant refactor of development workflow overview page
