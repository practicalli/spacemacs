# ------------------------------------------------ #
# Practicalli Makefile
#
# Consistent set of targets to support local development of Clojure
# and build the Clojure service during CI deployment
#
# `-` before a command ignores any errors returned

# Requirements
# - python
# - uv
# - clojure & practicalli cli config (dependency check)
# - docker
# - mega-linter-runner
# ------------------------------------------------ #

# -- Makefile task config ------------------------ #
# .PHONY: ensures target used rather than matching file name
# https://makefiletutorial.com/#phony
.PHONY: all clean dist docs lint pre-commit-check
# ------------------------------------------------ #

# -- Makefile Variables -------------------------- #
# run help if no target specified
.DEFAULT_GOAL := help
# Column the target description is printed from
HELP-DESCRIPTION-SPACING := 24

# SHELL := /usr/bin/zsh

# Tool variables
MEGALINTER_RUNNER := npx mega-linter-runner --flavor documentation --env "'MEGALINTER_CONFIG=.github/config/megalinter.yaml'" --remove-container
DOCS_SERVER := zensical serve --dev-addr localhost:7777
OUTDATED_FILE := outdated-$(shell date +%y-%m-%d-%T).md
# ------------------------------------------------ #

# -- Code Quality -------------------------------- #
pre-commit-check: lint ## Run format, lint and test targets

lint:  ## Run MegaLinter with custom configuration (node.js required)
	$(info -- MegaLinter Runner ---------------------)
	$(MEGALINTER_RUNNER)

lint-fix:  ## Run MegaLinter with applied fixes and custom configuration (node.js required)
	$(info -- MegaLinter Runner fix errors ----------)
	$(MEGALINTER_RUNNER) --fix

lint-clean:  ## Clean MegaLinter report information
	$(info -- MegaLinter Clean Reports --------------)
	- rm -rf ./megalinter-reports

megalinter-upgrade:  ## Upgrade MegaLinter config to latest version
	$(info -- MegaLinter Upgrade Config -------------)
	npx mega-linter-runner@latest --upgrade

dependencies-outdated: ## Report new versions of library dependencies and GitHub action
	$(info -- Search for outdated libraries ---------)
	- clojure -T:search/outdated > $(OUTDATED_FILE)

dependencies-update: ## Update all library dependencies and GitHub action
	$(info -- Search for outdated libraries ---------)
	- clojure -T:update/dependency-versions > $(OUTDATED_FILE)
# ------------------------------------------------ #

# --- Documentation Generation  ------------------ #
docs-install:  ## Install or upgrade Zensical in Python virtual environment
	uv tool install zensical --upgrade

docs:  ## Build and run docs in local server
	$(info -- Local Server --------------------------)
	$(DOCS_SERVER)

docs-open:  ## Build docs, run server & open browser
	$(info -- Local Server & Browser ----------------)
	$(DOCS_SERVER) --open

docs-build:  ## Build docs locally
	$(info -- Build Docs Website --------------------)
	zensical build

docs-debug:  ## Run local server in debug mode
	$(info -- Local Server Debug --------------------)
	$(DOCS_SERVER) -v
# ------------------------------------------------ #

# ------- Version Control ------------------------ #
git-sr:  ## status list of git repos under current directory
	$(info -- Multiple Git Repo Status --------------)
	mgitstatus -e --flatten

git-status:  ## status details of git repos under current directory
	$(info -- Multiple Git Status -------------------)
	mgitstatus
# ------------------------------------------------ #

# -- Help ---------------------------------------- #
# Source: https://nedbatchelder.com/blog/201804/makefile_help_target.html

help:  ## Describe available tasks in Makefile
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-$(HELP-DESCRIPTION-SPACING)s\033[0m %s\n", $$1, $$2}'
# ------------------------------------------------ #
