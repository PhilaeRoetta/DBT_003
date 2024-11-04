

with items as (
    SELECT 
        ITEM_ID, ITEM_NAME 
    FROM 
        {{ source ('DBT_LEARN_003', 'DBT_ITEM_003')}}
)

select * from items