{{ config(materialized="incremental",
unique_key = 'INT1') }}

with
    tbl_incr as (
        select *
        from dbt.dbt_003.tbl_incr
        {% if is_incremental() %}
            where
                dat1 > (select max(dat1) from {{ this }})

        {% endif %}
    )

select *
from tbl_incr
