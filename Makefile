PHONY: deps deps

deps:
	pip install -r requirements.txt

clean:
	rm -rf *.duckdb
	# (cd dbt_project && dbt clean)

dbt: clean
	dbt deps --project-dir dbt_project
	dbt build --target dev --project-dir dbt_project

duckdb_cli:
	duckdb dev.duckdb

format:
	ruff format .