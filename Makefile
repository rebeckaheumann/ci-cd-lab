.PHONY: run lint format format-check test check sync clean build

run:
	uv run uvicorn app.main:app --reload

lint:
	uv run ruff check

format:
	uv run ruff format

format-check:
	uv run ruff format --check

test:
	uv run pytest

check: format-check lint test

sync:
	uv sync

clean:
	rm -rf build dist *.egg-info

build: clean
	uv build