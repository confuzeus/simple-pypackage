.PHONE: install-requirements compile-requirements

install-requirements:
	pip install -r requirements/base.txt -r requirements.dev.txt
	pip install -e .

compile-requirements:
	pip-compile -o requirements/base.txt pyproject.toml
	pip-compile --extra dev -o requirements/dev.txt pyproject.toml
