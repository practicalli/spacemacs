# -------------------------------------- #
# Practicalli Makefile
#
# Consistent set of targets to support local book development
# -------------------------------------- #

# -- Makefile task config -------------- #
# .PHONY: ensures target used rather than matching file name
# https://makefiletutorial.com/#phony
.PHONY: all clean docs lint pre-commit-check test
# -------------------------------------- #

# -- Makefile Variables ---------------- #
# run help if no target specified
.DEFAULT_GOAL := help
# Column the target description is printed from
HELP-DESCRIPTION-SPACING := 24

SHELL := /usr/bin/zsh

# Tool Commands
MEGALINTER_RUNNER := npx mega-linter-runner --flavor documentation --env "'MEGALINTER_CONFIG=.github/config/megalinter.yaml'" --env "'VALIDATE_ALL_CODEBASE=true'"  --remove-container
MKDOCS_SERVER := mkdocs serve --dev-addr localhost:7777
OUTDATED_FILE := outdated-$(shell date +%y-%m-%d-%T).md
# -------------------------------------- #

# --  Quality Checks  ------------------ #
pre-commit-check: lint

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
# -------------------------------------- #

# --- Documentation Generation  -------- #
python-venv:  ## Create Python Virtual Environment
	$(info -- Create Python Virtual Environment -----)
	python3 -m venv ~/.local/venv

python-activate:  ## Activate Python Virtual Environment for MkDocs
	$(info -- Mkdocs Local Server -------------------)
	source ~/.local/venv/bin/activate

mkdocs-install:
	$(info -- Install Material for MkDocs -----------)
	source ~/.local/venv/bin/activate && pip install mkdocs-material mkdocs-callouts mkdocs-glightbox mkdocs-git-revision-date-localized-plugin mkdocs-redirects mkdocs-rss-plugin pillow cairosvg --upgrade

docs: ## Build and run mkdocs in local server (python venv)
	$(info -- MkDocs Local Server -------------------)
	source ~/.local/venv/bin/activate && $(MKDOCS_SERVER)

docs-changed:  ## Build only changed files and run mkdocs in local server (python venv)
	$(info -- Mkdocs Local Server -------------------)
	source ~/.local/venv/bin/activate && $(MKDOCS_SERVER) --dirtyreload

docs-build:  ## Build mkdocs (python venv)
	$(info -- Mkdocs Build Website ------------------)
	source ~/.local/venv/bin/activate && mkdocs build

docs-debug:  ## Run mkdocs local server in debug mode (python venv)
	$(info -- Mkdocs Local Server Debug -------------)
	. ~/.local/venv/bin/activate; $(MKDOCS_SERVER) -v

docs-staging:  ## Deploy to staging repository
	$(info -- Mkdocs Staging Deploy -----------------)
	source ~/.local/venv/bin/activate && mkdocs gh-deploy --force --no-history --config-file mkdocs-staging.yml
# -------------------------------------- #

# ------- Version Control -------------- #
git-sr:  ## status list of git repos under current directory
	$(info -- Multiple Git Repo Status --------------)
	mgitstatus -e --flatten

git-status:  ## status details of git repos under current directory
	$(info -- Multiple Git Status -------------------)
	mgitstatus
# -------------------------------------- #

# ------------ Help -------------------- #
# Source: https://nedbatchelder.com/blog/201804/makefile_help_target.html

help:  ## Describe available tasks in Makefile
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
	sort | \
	awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-$(HELP-DESCRIPTION-SPACING)s\033[0m %s\n", $$1, $$2}'
# -------------------------------------- #

dist: deps-build ## Build mkdocs website
