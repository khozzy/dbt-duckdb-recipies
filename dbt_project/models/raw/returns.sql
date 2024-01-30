select * from {{ source("csv_files", "returns") }}
