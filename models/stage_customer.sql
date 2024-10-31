{{ config (
    materialized="table"
    )
}}

with customers as (
    SELECT 
        CUSTOMER_ID, CUST_NAME 
    FROM 
        MYDB.PUBLIC.DBT_CUSTOMER_003
)

select * from customers