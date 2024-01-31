SELECT * FROM {{ source("csv_files", "sales") }}
