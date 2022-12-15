FROM {{cookiecutter.base_docker_image}}

ENV POETRY_VERSION=1.1.12

RUN pip install "poetry==$POETRY_VERSION"

COPY poetry.lock pyproject.toml ./

RUN poetry install --no-dev --no-interaction --no-ansi

COPY ./{{cookiecutter.package_dir}} ./{{cookiecutter.package_dir}}

EXPOSE 5000

CMD ["poetry", "run", "python", "./{{cookiecutter.package_dir}}/main.py" ]