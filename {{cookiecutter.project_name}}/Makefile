DOCKER_IMAGE_TAG={{cookiecutter.docker_image_tag}}
PACKAGE_DIR={{cookiecutter.package_dir}}

format:
	poetry run ruff $(PACKAGE_DIR) tests --fix
	poetry run black $(PACKAGE_DIR) tests
	poetry run isort $(PACKAGE_DIR) tests

lint:
	poetry run ruff $(PACKAGE_DIR) tests
	poetry run black $(PACKAGE_DIR) tests --check
	poetry run isort $(PACKAGE_DIR) tests --check-only

test:
	poetry run pytest --cov=$(PACKAGE_DIR) --cov-report html --cov-report term-missing
	rm .coverage 2>/dev/null || del .coverage

run:
	poetry run python $(PACKAGE_DIR)/main.py

build:
	docker build -t $(DOCKER_IMAGE_TAG) .

run-docker: build
	docker run -i -t --rm $(DOCKER_IMAGE_TAG)
