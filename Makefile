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

# Column the target description is printed from
HELP-DESCRIPTION-SPACING := 24

# Makefile file and directory name wildcard
EDN-FILES := $(wildcard *.edn)

# ------------------------------------ #


# ------  Quality Checks  ------------ #

pre-commit-check: lint

lint:  ## Run MegaLinter with custom configuration (node.js required)
	$(info --------- MegaLinter Runner ---------)
	npx mega-linter-runner --flavor documentation --release beta --env "'MEGALINTER_CONFIG=.github/config/megalinter.yaml'" --remove-container


lint-fix:  ## Run MegaLinter with custom configuration (node.js required)
	$(info --------- MegaLinter Runner ---------)
	npx mega-linter-runner --fix --flavor documentation --release beta --env "'MEGALINTER_CONFIG=.github/config/megalinter.yaml'" --remove-container

lint-clean:  ## Clean MegaLinter report information
	$(info --------- MegaLinter Clean Reports ---------)
	- rm -rf ./megalinter-reports

# ------------------------------------ #


# --- Documentation Generation  ------ #

docs:  ## Build and run mkdocs in local server
	$(info --------- Mkdocs Local Server ---------)
	mkdocs serve --dev-addr localhost:7777

docs-changed:  ## Build only changed files and run mkdocs in local server
	$(info --------- Mkdocs Local Server ---------)
	mkdocs serve --dirtyreload --dev-addr localhost:7777

docs-build:  ## Build mkdocs
	$(info --------- Mkdocs Local Server ---------)
	mkdocs build

# ------------------------------------ #


# ------------ Help ------------------ #

# Source: https://nedbatchelder.com/blog/201804/makefile_help_target.html

help:  ## Describe available tasks in Makefile
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-$(HELP-DESCRIPTION-SPACING)s\033[0m %s\n", $$1, $$2}'

# ------------------------------------ #
