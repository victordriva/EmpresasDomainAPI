FROM python:3.8

ARG PY_ENV

ENV PY_ENV=${PY_ENV} \
    PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VERSION=1.1.13

RUN pip install "poetry==$POETRY_VERSION"

# Copy only requirements to cache them in docker layer
WORKDIR /code
COPY poetry.lock pyproject.toml /code/

# Project initialization:
RUN poetry install $(test "$PY_ENV" == production && echo "--no-dev") --no-interaction --no-ansi

# Creating folders, and files for a project:
COPY . /code

# Run the project:
CMD poetry run python src/main.py