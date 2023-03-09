.PHONY: install
install:
	poetry install

.PHONY: format
format:
	poetry run black .
	poetry run isort .

.PHONY: lint
lint:
	poetry run ruff .
	poetry run black --check .
	poetry run isort --check-only .

.PHONY: typecheck
typecheck:
	poetry run mypy .

.PHONY: test
test:
	poetry run pytest

.PHONY: all
all: lint typecheck test
