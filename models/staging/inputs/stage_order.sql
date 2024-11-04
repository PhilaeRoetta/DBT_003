
with orders as (
    SELECT 
        ORDER_ID, CUSTOMER_ID, ITEM_ID, AMOUNT 
    FROM 
        {{ source ('DBT_LEARN_003', 'DBT_ORDER_003')}}
)

SELECT * FROM orders