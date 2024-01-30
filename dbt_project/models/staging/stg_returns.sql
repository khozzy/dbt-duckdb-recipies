with
    returns as (
        select
            {{ dbt_utils.generate_surrogate_key(["return_id"]) }} as '_KEY_Return',
            {{ dbt_utils.generate_surrogate_key(["sale_id"]) }} as '_KEY_Sale',
            *,
        from {{ ref("returns") }}
    ),
    final as (select * from returns)

select *
from final
