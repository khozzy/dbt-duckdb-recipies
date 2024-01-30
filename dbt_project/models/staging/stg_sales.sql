with
    sales as (
        select
            {{ dbt_utils.generate_surrogate_key(["sale_id"]) }} as '_KEY_Sale',
            {{ dbt_utils.generate_surrogate_key(["product"]) }} as '_KEY_Product',
            *
        from {{ ref("sales") }}
    ),
    final as (select * from sales)

select *
from final
