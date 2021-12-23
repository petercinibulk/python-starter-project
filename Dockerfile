FROM python:3.8-slim

ENV POETRY_VERSION=1.1.12

RUN pip install "poetry==$POETRY_VERSION"

COPY poetry.lock pyproject.toml ./

RUN poetry install --no-dev --no-interaction --no-ansi

COPY ./app ./app

EXPOSE 5000

CMD ["poetry", "run", "python", "./app/main.py" ]