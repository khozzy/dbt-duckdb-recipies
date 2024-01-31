with
    products as (
        select {{ surrogate_key("Product", ["id"]) }}, * from {{ ref("products") }}
    ),
    final as (select * from products)

select *
from final
