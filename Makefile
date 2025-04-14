# ------------------------------------------
# Practicalli: Makefile
#
# Consistent set of targets to support local book development
# ------------------------------------------

# .PHONY: ensures target used rather than matching file name
# https://makefiletutorial.com/#phony
.PHONY: all clean docs lint pre-commit-check test

# ------- Makefile Variables --------- #
# run help if no target specified
.DEFAULT_GOAL := help
SHELL := /usr/bin/zsh

# Column the target description is printed from
HELP-DESCRIPTION-SPACING := 24

# Tool Commands
MEGALINTER_RUNNER := npx mega-linter-runner --flavor documentation --env "'MEGALINTER_CONFIG=.github/config/megalinter.yaml'" --env "'VALIDATE_ALL_CODEBASE=true'"  --remove-container
MKDOCS_SERVER := mkdocs serve --dev-addr localhost:7777

# Makefile file and directory name wildcard
EDN-FILES := $(wildcard *.edn)
# ------------------------------------ #

# ------  Quality Checks  ------------ #
pre-commit-check: lint

lint:  ## Run MegaLinter with custom configuration (node.js required)
	$(info --------- MegaLinter Runner ---------)
	$(MEGALINTER_RUNNER)

lint-fix:  ## Run MegaLinter with custom configuration (node.js required)
	$(info --------- MegaLinter Runner ---------)
	$(MEGALINTER_RUNNER) --fix

lint-clean:  ## Clean MegaLinter report information
	$(info --------- MegaLinter Clean Reports ---------)
	- rm -rf ./megalinter-reports

megalinter-upgrade:  ## Upgrade MegaLinter config to latest version
	$(info --------- MegaLinter Upgrade Config ---------)
	npx mega-linter-runner@latest --upgrade
# ------------------------------------ #

# --- Documentation Generation  ------ #
python-venv:  ## Enable Python Virtual Environment for MkDocs
	$(info --------- Mkdocs Local Server ---------)
	source ~/.local/venv/bin/activate

docs: ## Build and run mkdocs in local server (python venv)
	$(info --------- Mkdocs Local Server ---------)
	source ~/.local/venv/bin/activate && $(MKDOCS_SERVER)

docs-changed:  ## Build only changed files and run mkdocs in local server (python venv)
	$(info --------- Mkdocs Local Server ---------)
	source ~/.local/venv/bin/activate && $(MKDOCS_SERVER) --dirtyreload

docs-build:  ## Build mkdocs (python venv)
	$(info --------- Mkdocs Local Server ---------)
	source ~/.local/venv/bin/activate && mkdocs build
# ------------------------------------ #

# ------------ Help ------------------ #
# Source: https://nedbatchelder.com/blog/201804/makefile_help_target.html

help:  ## Describe available tasks in Makefile
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-$(HELP-DESCRIPTION-SPACING)s\033[0m %s\n", $$1, $$2}'
# ------------------------------------ #
