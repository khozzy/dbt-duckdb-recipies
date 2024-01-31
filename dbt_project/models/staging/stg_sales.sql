with
    sales as (
        select
            {{ surrogate_key("Sale", ["sale_id"]) }},
            {{ surrogate_key("Product", ["product_id"]) }}
        from {{ ref("sales") }}
    ),
    final as (select * from sales)

select *
from final
