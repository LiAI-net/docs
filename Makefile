deploy-local:
	python3 -m venv .venv
	./.venv/bin/python3 -m pip install -r docs/requirements.txt
	./.venv/bin/python3 -m mkdocs serve
