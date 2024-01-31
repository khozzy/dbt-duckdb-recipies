# USS with DBT

```
virtualenv --python=/opt/homebrew/opt/python@3.11/libexec/bin/python .venv
source .venv/bin/activate.fish 
pip install -r requirements.txt

pipx install shandy-sqlfmt[jinja-template]

dbt --version
```

TODO:
- products.json (multiple files)
- sqlfluff vscode extensions
- notebook query example
- python dbt model