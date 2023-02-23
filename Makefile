DOCKER_IMAGE_TAG={{cookiecutter.docker_image_tag}}

format:
	ruff . --fix --respect-gitignore
	black .

lint:
	ruff . --respect-gitignore
	black . --check

test:
	coverage run -m pytest
	coverage report
	coverage xml

clean:
	rm -r .ruff_cache .tox htmlcov safeguard_notification.egg-info .coverage coverage.xml

run:
	python src/main.py

build:
	docker build -t $(DOCKER_IMAGE_TAG) .

run-docker: build
	docker run -i -t --rm $(DOCKER_IMAGE_TAG)
