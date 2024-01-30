select * from {{ source("csv_files", "sales") }}
