
with customers as (
    SELECT 
        CUSTOMER_ID, CUST_NAME 
    FROM 
        {{ source ('DBT_LEARN_003', 'DBT_CUSTOMER_003')}}
)

select * from customers