# DBT + Duckdb Template
Personal template for ad-hoc analysis performed locally with dbt and Duckdb.

This repository showcase:
- DBT with [dbt-duckdb](https://github.com/duckdb/dbt-duckdb/) plugin,
- example of reading local CSV and JSON files (`data/`),
- Jinja SQL linting and formatting (VSCode support),
- Jupyter integration (`notebooks/`)

## Setup
```bash
virtualenv --python=/opt/homebrew/opt/python@3.11/libexec/bin/python .venv
source .venv/bin/activate.fish 
pip install -r requirements.txt

pipx install sqlfmt
pipx install shandy-sqlfmt[jinja-template]
pipx install ruff

dbt --version
```

## Usage
```bash
make deps
make dbt
```

## Roadmap
- Proper Puppini Bridge model,
- Example of Python dbt model (+Ruff integration)
- In memory execution and external materialization to Parquet
- Makefile target for linting and formatting code
- Papermill for notebooks