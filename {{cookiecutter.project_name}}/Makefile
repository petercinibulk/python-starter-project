DOCKER_IMAGE_TAG={{cookiecutter.docker_image_tag}}
PACKAGE_DIR={{cookiecutter.package_dir}}

format:
	ruff $(PACKAGE_DIR) tests --fix
	black $(PACKAGE_DIR) tests
	isort $(PACKAGE_DIR) tests

lint:
	ruff $(PACKAGE_DIR) tests
	black $(PACKAGE_DIR) tests --check
	isort $(PACKAGE_DIR) tests --check-only

test:
	coverage run -m pytest
	coverage xml

run:
	python $(PACKAGE_DIR)/main.py

build:
	docker build -t $(DOCKER_IMAGE_TAG) .

run-docker: build
	docker run -i -t --rm $(DOCKER_IMAGE_TAG)
