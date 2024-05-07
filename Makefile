# Detect the operating system
ifeq ($(OS),Windows_NT)
    PYTHON := python
    PIP := .venv\Scripts\python -m pip
    MKDOCS := .venv\Scripts\python -m mkdocs
else
    PYTHON := python3
    PIP := ./.venv/bin/python3 -m pip
    MKDOCS := ./.venv/bin/python3 -m mkdocs
endif

deploy-local:
	@echo "Deploying on detected OS..."
	$(PYTHON) -m venv .venv
	$(PIP) install -r docs/requirements.txt
	$(MKDOCS) serve