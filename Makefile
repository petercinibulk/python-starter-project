APP_NAME=app

format:
	poetry run autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place app --exclude=__init__.py
	poetry run black app
	poetry run isort app

lint:
	poetry run flake8 app
	poetry run black app --check
	poetry run isort app --check-only

test:
	poetry run pytest --cov=app --cov-report html --cov-report term-missing
	rm .coverage 2>/dev/null || del .coverage

run:
	poetry run python app/main.py

build:
	docker build -t $(APP_NAME) .

run-docker: build
	docker run -i -t --rm $(APP_NAME)
