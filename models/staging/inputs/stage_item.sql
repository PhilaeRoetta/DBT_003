

with items as (
    SELECT 
        ITEM_ID, ITEM_NAME 
    FROM 
        {{ input_file(source('DBT_LEARN_003', 'DBT_ITEM'), ref('mock_item'))}}
)

select * from items