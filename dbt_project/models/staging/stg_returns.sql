with
    returns as (
        select
            {{ surrogate_key("Return", ["return_id"]) }},
            {{ surrogate_key("Sale", ["sale_id"]) }},
            *,
        from {{ ref("returns") }}
    ),
    final as (select * from returns)

select *
from final
