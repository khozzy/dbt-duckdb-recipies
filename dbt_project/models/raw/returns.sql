SELECT * FROM {{ source("csv_files", "returns") }}
