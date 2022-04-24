# Empresas Domain API
This API is the interface for the **Empresa** entity. 

It should be used to query and update data related to companies.

# How to use
TODO

# Development
To start contributing to this project first install the [Poetry](https://python-poetry.org/) tool for dependency managment.
```sh
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
```

If you are going to deploy your changes directly you are going to need [Docker](https://docker.com/) and the [gcloud CLI](https://cloud.google.com/sdk/docs/install) (or [this](https://marketplace.visualstudio.com/items?itemName=GoogleCloudTools.cloudcode#:~:text=Cloud%20Code%20for%20VS%20Code,are%20working%20with%20local%20code.) extension)

After that install the packages with Poetry, this will install the normal dependencies and the [dev dependencies](#dev-dependencies)
```sh
# Clone the repo and cd into the directory, then
poetry install
```

## Dev dependencies
* [pytest](https://docs.pytest.org/en/latest/) e [pytest-cov](https://pytest-cov.readthedocs.io/en/latest/)
* [black](https://github.com/psf/black)
* [isort](https://github.com/timothycrosley/isort)
* [mypy](http://mypy-lang.org/)
* [flake8](http://flake8.pycqa.org/en/latest/)
* [pre-commit](https://pre-commit.com/)

