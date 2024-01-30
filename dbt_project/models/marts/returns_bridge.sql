-- puppini bridge
with
    merged as (
        {{
            dbt_utils.union_relations(
                relations=[ref("stg_sales"), ref("stg_returns")],
                include=['_KEY_Sale', '_KEY_Return', '_KEY_Product', 'qty_sold', 'qty_returned'],
                source_column_name='_src',
            )
        }}
    ),
    final as (select replace(split_part(_src, '.', 3), '"', '') as stage, * from merged)

select * exclude(_src)
from final
