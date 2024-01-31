SELECT * FROM {{ source("json_files", "products") }}
