PHONY: deps deps dbt duckdb_cli format

deps:
	pip install -r requirements.txt
	dbt deps --project-dir dbt_project

clean:
	rm -rf *.duckdb
	# (cd dbt_project && dbt clean)

dbt: clean
	dbt build --target dev --project-dir dbt_project

duckdb_cli:
	duckdb dev.duckdb

format:
	ruff format .