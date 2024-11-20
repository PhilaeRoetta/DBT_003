
with customers as (
    SELECT 
        CUSTOMER_ID, CUST_NAME, DOB 
    FROM 
        {{ input_file(source('DBT_LEARN_003', 'DBT_CUSTOMER'), ref('mock_customer'))}}
)

select * from customers